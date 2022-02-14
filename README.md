# cross-compiler-showcase

## For x86_x64

* sudo apt install gcc make
* make x86_compile
* file helloworld.x86

```bash
helloworld.x86: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=2567842b9582a457ecb3d954d5b22751ee29cb0c, for GNU/Linux 3.2.0, not stripped
```

## For ARM 64bit

* sudo apt install gcc make gcc-aarch64-linux-gnu binutils-aarch64-linux-gnu
* make arm_compile
* file helloworld.arm

```bash
helloworld.arm: ELF 64-bit LSB shared object, ARM aarch64, version 1 (SYSV), dynamically linked, interpreter /lib/ld-linux-aarch64.so.1, BuildID[sha1]=53a427b2f43f437f6839552854231812f868ef27, for GNU/Linux 3.7.0, not stripped
```

## Cross compiling using example project(strace)

* make example

```bash
strace: ELF 64-bit LSB executable, ARM aarch64, version 1 (GNU/Linux), statically linked, BuildID[sha1]=a7543c7814817c7356b94d7f34cf2692c78ed0a5, for GNU/Linux 3.7.0, with debug_info, not stripped
```
