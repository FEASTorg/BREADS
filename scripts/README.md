# Scripts

## cloneAllBREAD

To create a BREADS development folder with all the repositories making up the framework use the following script. Start by installing the requests and GitPython packages:

```
pip install requests gitpython
```

Then download run [this script](scripts/cloneAllBREAD.py) which will clone all the required repos into a folder called BREAD_DEV (including this one):

```
python cloneAllBREAD.py
```

Before running the script replace YOUR_TOKEN_HERE at the top of the file with a GitHub access token with permissions for accessing organizations and manipulating repositories.
