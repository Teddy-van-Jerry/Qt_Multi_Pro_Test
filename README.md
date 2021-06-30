# Qt Multi Pro Test
A simple test of multi projects of Qt.

> Compiling using:
> - (Windows 10) Qt 6.1.1 MinGW / MSVC
> - (Ubuntu 20) Qt 6.0.3 GCC

## Introduction
It goes beyond saying that a good structure of the programme is fundamental.
However, doing so seems too complicited.

Here I use a sample to implement the idea of using `subdirs` template in Qt using **QMAKE**.

## Windows
> Here I test on WIndows 10.

The LIB file has the suffix `dll`, add them in the `pro` file.

## Linux
> Here I test on Ubuntu 20.

The LIB file has the suffix `so`, add them in the `pro` file.

**PRO TIP**: The line here is very important, without which there can be compiling errors.
Without this line, there can be file `.so`, `.so.1`, `.so.1.0`, `.so.1.0.0`,
which can lead to errors of shared libraries.
```qmake
CONFIG += plugin # no symbolic link on linux
# Ref: https://forum.qt.io/topic/18882/solved-suppress-so-version-on-linux
```
![Effect on Ubuntu](https://img-blog.csdnimg.cn/20210630235425169.png)
