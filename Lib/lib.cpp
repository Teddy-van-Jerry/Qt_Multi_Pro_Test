#include "lib.h"

Lib::Lib(int n) : num(n)
{

}

int Lib::plus1()
{
    return ++num;
}
