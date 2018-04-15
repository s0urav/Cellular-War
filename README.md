
# Build

```bash
export SFML_DIR=path/to/SFML/SFML
mkdir out
make
```

# Run

Before running the executable `out/main.out`, prepend to `LD_LIBRARY_PATH`
the path to the shared libraries of SFML, like so:

```bash
export LD_LIBRARY_PATH=${SFML_DIR}/lib:$LD_LIBRARY_PATH
```
