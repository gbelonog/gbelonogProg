
#include <iostream>
using namespace std;
long factorial(int);
int main() {
   
        //iteration
        int fact, counter, number;
        fact = 1;
        number = 5;
        
        for (counter = number; counter>=1; counter--)
        fact *= counter;
        
        cout<< fact;
        
        //recursion
        int i;
        for (i = 1; i <= 5; i++)
        cout << "\n" << i << " - " << factorial(i);

        return 0;
}
    
    long factorial (int number)
    {
        if (number <= 1)
        return 1;
        else
        return (number * factorial (number - 1));
    }

