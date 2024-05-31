# libasm
![Kendrick Lamar](./screens/MMandTBS.webp)

libasm is a project to implement standard library functions in C on Assembly x64/x86.
As for may 2024 I've implemented only these functions:<br>
`strlen, strcpy, strcmp, strdup, read, write`

## Contents
- [Installation](#installation)
  - [MacOS](#macos)
    - [Testing](#testing)
    - [Use as library](#use-as-library)
  - [Linux](#linux)
  - [Docker](#docker)
- [Introduction to Assembly x64/x86](#introduction-to-assembly-x64x86)
  - [Sections](#sections)
  - [Registers](#registers)
  - [Instructions](#instructions)
  - [Opcodes](#opcodes)
  - [nasm](#nasm)

## Installation
### MacOS
```shell
make
```

#### Testing
```shell
make test
```
#### Use as library
Before including this dynamic lib to your C file, please make sure that in Makefile you added new target for compilation.
```c
#include "libasm.h"

int main(){
    char *str = "Hello!";
    size_t sz = ft_strlen(str);
    printf("%zu\n", sz);
    return 0;
}
```
### Linux

### Docker

## Introduction to Assembly x64/x86
### Sections

### Registers

### Instructions

### Opcodes

### nasm