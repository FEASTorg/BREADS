import os
import requests
from git import Repo

# GitHub personal access token (make sure you have SSH keys set up)
GITHUB_TOKEN = 'YOUR_TOKEN_HERE'
# GitHub organization
ORG_NAME = 'uwo-fast'

# Headers for GitHub API authentication
headers = {
    'Authorization': f'token {GITHUB_TOKEN}'
}

def get_matching_repos():
    url = f'https://api.github.com/orgs/{ORG_NAME}/repos'
    repos = []
    page = 1
    while True:
        response = requests.get(url, headers=headers, params={'per_page': 100, 'page': page})
        response_data = response.json()
        if not response_data:
            break
        repos.extend([repo for repo in response_data if repo['name'].lower().startswith(('slice', 'loaf', 'bread'))])
        page += 1
    return repos

def clone_or_pull_repos(repos):
    script_dir = os.path.dirname(os.path.abspath(__file__))
    target_dir = os.path.abspath(os.path.join(script_dir,  'BREAD_DEV'))
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)
    for repo in repos:
        repo_name = repo['name']
        repo_url = repo['ssh_url']  # Use 'clone_url' for HTTPS
        dest_dir = os.path.join(target_dir, repo_name)
        if not os.path.exists(dest_dir):
            print(f'Cloning {repo_name} into {dest_dir}')
            Repo.clone_from(repo_url, dest_dir)
        else:
            print(f'Pulling updates for {repo_name} in {dest_dir}')
            repo = Repo(dest_dir)
            o = repo.remotes.origin
            o.pull()

if __name__ == '__main__':
    matching_repos = get_matching_repos()
    clone_or_pull_repos(matching_repos)
