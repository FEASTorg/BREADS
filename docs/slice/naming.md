# Slice Naming Convention

Slice modules follow a structured naming format to remain compact yet descriptive:

```js
Slice_<FUNCTION>_(<ID>)_[<REVISION>]
```

## General Rules

- `<FUNCTION>`: A short, uppercase code that identifies the slice’s primary role (e.g. `TEMP` for templates, `PRTO` for prototyping, `THRM` for thermocouple reading, `DCMT` for DC motor control).
- `<ID>`: A concise identifier used **only when multiple versions** of a slice exist. This may reflect a specific sensor model (e.g. `31855`) for function cards or layout type (e.g. `S2L` for small 2-layer) and controller platform (e.g. `NUCL` for Nucleo) for template boards.
- `<REVISION>`: An optional suffix (`-r2`, `-revB`, etc.) for tracking major hardware revisions or forks. Only used when divergence cannot be handled via standard versioning.

Additional guidance:

- If the slice has **only one known version**, no `<ID>` is required.  
  Example: `Slice_RLHT`
- If a slice is extended or forked into **multiple variants**, suffix the name to indicate:
  - A different sensor or IC (e.g. `31856`)
  - A different layout or platform (e.g. `NANO`, `NUCL`, or `S2L`)

The goal is to balance **descriptive clarity** with **compact naming**, supporting consistent tracking of hardware variants across repositories and documentation.

---

## Variant Naming Patterns

## 🔌 Component-Based Slices

Used when multiple revisions of the function-specific slice exist with different hardware implementations:

| Example            | Meaning                           |
| ------------------ | --------------------------------- |
| `Slice_THRM_6675`  | Thermocouple reader using MAX6675 |
| `Slice_THRM_31855` | Uses MAX31855                     |
| `Slice_THRM_31856` | Uses MAX31856                     |

---

## 🧩 Template/Generic Slices (by layout or controller)

Used for general-purpose template and prototyping slices that vary in size, complexity, or host MCU:

| Example               | Meaning                                             |
| --------------------- | --------------------------------------------------- |
| `Slice_TEMP_NANO_S2L` | Small board, Arduino Nano, 2-layer template         |
| `Slice_TEMP_NUCL_L4L` | Large board, STM32 Nucleo, 4-layer template         |
| `Slice_PRTO_CONN_S2L` | Small 2-layer prototyping board with connectors     |
| `Slice_PRTO_SMT_S2L`  | Small 2-layer prototyping board with SMT components |

**Note**:

- **Template slices** should specify the **host platform** (e.g. `NANO`, `NUCLEO`) as most designs are tightly coupled to the specific MCU footprint.

- **Prototyping slices** (e.g. `PRTO`) should be **platform-agnostic** when possible and designed to accommodate all currently supported platforms (e.g. `NANO` and `NUCLEO32`), unless the design intentionally targets a platform-specific feature or constraint.

- Always include **board dimensions** and **layer count** for hardware selection clarity.

## 🔄 Revision Tracking

For major design forks or internal revisions of the same variant:

| Example                    | Meaning                                  |
| -------------------------- | ---------------------------------------- |
| `Slice_THRM_31856-r2`      | Second revision of the 31856-based slice |
| `Slice_TEMP_NANO_S2L-r1`   | Initial rev of small Nano template       |
| `Slice_TEMP_NANO_S2L-revB` | Parallel variant diverging from revA     |

➡️ Use suffixes like `-r2`, `-r3`, etc. for **serial revisions** of the same design.  
➡️ Use suffixes like `-revB`, `-revC`, etc. for **parallel forks** that share a function but differ in layout, constraints, or development path.

> The preferred convention is to use a **single Git repository** and **Semantic Versioning (SemVer)** via tags/releases for minor design iterations and bugfixes (e.g. `v1.0.0`, `v1.1.1`, etc.).

However, if a design change:

- Diverges significantly in layout, controller, or feature scope
- Needs to be developed in parallel with an existing slice
- Is intended to **phase out** or **replace** a legacy board gradually
- Or cannot be meaningfully versioned within the same repo

➡️ Then it should be assigned a unique suffix and placed in a **separate repository**.

This approach supports long-term clarity, traceability, and modular development while allowing flexibility during hardware iteration and community contribution.
