#ifndef LIB_H
#define LIB_H

#include "Lib_global.h"

class LIB_EXPORT Lib
{

public:
    Lib(int n);

    int plus1();

private:
    int num = 0;
};

#endif // LIB_H
