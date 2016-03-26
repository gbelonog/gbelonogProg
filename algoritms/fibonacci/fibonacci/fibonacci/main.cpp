//There is an exmple of recursion
#include <iostream>

using namespace std;
int fibonacci(int);

int main()
{
    int number;
    int result;
    cout << "Fibonacci numbers: 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610, 987, 1597, 2584, 4181, 6765, 10946, … \n";
    cout << "Enter an id of Fibonacci number: ";
    cin >> number;
    result = fibonacci(number);

    cout << "Fibonacci (" << number << ") = " << result;
    return 0;
}



int fibonacci (int n)
{
    if (n == 0 || n == 1)
        return n;
    else
        return fibonacci(n - 1) + fibonacci (n - 2);
}