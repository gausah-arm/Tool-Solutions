# Example config.mk
# 
# Copyright (c) 2018, Arm Limited.
# SPDX-License-Identifier: MIT

HOST_CC = /usr/bin/gcc-7
HOST_CFLAGS = -std=c99 -O2
HOST_CFLAGS += -Wall -Wno-unused-function

CC = /usr/bin/gcc-7
CFLAGS = -std=c99 -pipe -O3
CFLAGS += -Wall -Wno-missing-braces
CFLAGS += -Werror=implicit-function-declaration

# Enable debug info.
HOST_CFLAGS += -g
CFLAGS += -g

# Optimize the shared libraries on aarch64 assuming they fit in 1M.
#CFLAGS_SHARED = -fPIC -mcmodel=tiny

# Use if mpfr is available on the target for ulp error checking.
#LDLIBS += -lmpfr -lgmp
#CFLAGS += -DUSE_MPFR

# Use with gcc.
CFLAGS += -frounding-math -fexcess-precision=standard -fno-stack-protector
CFLAGS += -ffp-contract=fast -fno-math-errno

# Use with clang.
#CFLAGS += -ffp-contract=fast

# Additional CFLAGS for subprojects.
#math-cflags =
#string-cflags =

# Disable fenv checks
#ULPFLAGS = -q -f
#MATHTESTFLAGS = -nostatus

# Use for cross compilation with gcc.
#CROSS_COMPILE = aarch64-none-linux-gnu-


