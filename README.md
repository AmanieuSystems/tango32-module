# Tango kernel module

This is the source code for the kernel module used by the [Tango binary translator](https://www.amanieusystems.com/) which translates 32-bit ARM programs to run on 64-bit only ARM processors.

This kernel module allows 64-bit processes to emulate 32-bit system calls that cannot be entirely emulated in userspace. The interface is provided through ioctls on the `/dev/tango32` device node.

The minimum supported kernel version to v5.6. There is partial support for older kernels but this is not supported and some ioctls may behave incorrectly.
