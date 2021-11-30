# shell-fns
Shell Functions

## Overview

The idea with this is to create more declarative pipelines by given common operations easier (better?) names

## Building

```shell
bash generate.sh
```

This will traverse the `src` directory and create a script in `bin` following rules:

- for each file:
  - create a script with the `fn.` _"namespace"_ in the output directory
