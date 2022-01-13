#include "Matrix.h"

#include <iostream>
#include <cassert>


int main (int, char **)
{
    Matrix<int, 0> matrix;
    for (int i = 0; i < 10; ++i)
    {
        matrix[i][i] = i;
    }
    for (int i = 0, j = 9; i < 10; ++i, --j)
    {
        matrix[i][j] = j;
    }

    for (int i = 1; i < 9; ++i)
    {
        for (int j = 1; j < 9; ++j)
        {
            std:: cout << matrix[i][j] << " ";
        }
        std::cout << std::endl;
    }
    std::cout << matrix.size() << std::endl;
    matrix.printBusy();

    return 0;
}
