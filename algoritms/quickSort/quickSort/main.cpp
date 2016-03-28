
#include <iostream>
#include <stdlib.h>
using namespace std;

void print_array (int, int[]);
void quicksort(int[], int, int);
void randomized_quicksort(int[], int, int);
int partition(int[], int, int);
int randomized_partition(int[], int, int);

int main()
{
    int n = 7; //array size
    int p = 0; //pointer on first element
    int r = n - 1;//pointer on last element
    
    //simple partition
    int a[7] = {2,6,7,-1,3,5,0};
    cout << "array: ";
    print_array(n, a);
    quicksort (a, p, r);
    cout << "array sorted by quicksort: ";
    print_array(n, a);
    
    //randomized partition
    randomized_quicksort (a, p, r);
    cout << "array sorted by randomized quicksort: ";
    print_array(n, a);
    
    return 0;
}

void print_array (int n, int ar[])
{
    int k = 0;
    for(k = 0; k < n; k++)
    cout << ar[ k ] << " ";
    cout << "\n\n";
}

void quicksort(int array[], int p1, int r1)
 {
	int q = 0;//key
	if (p1 < r1) //do we have elements to sort in this partition?
	{
        q = partition(array, p1, r1);//array will be devided to 2 partitions
        quicksort (array, p1, (q - 1));//sort left part - requrtion
        quicksort (array, (q + 1), r1);//sort right part - requrtion
	}
 }

void randomized_quicksort(int a1[], int p, int r)
{
    int q = 0;
    if (p < r)
    {
        q = randomized_partition(a1, p, r);
        randomized_quicksort (a1, p, (q - 1));
        randomized_quicksort (a1, (q + 1), r);
    }
}

int partition(int a[], int p, int r)
{
    int x = a[r];// take last element
    int temp = 0;
    int i = p - 1;
    int j = 0;
    for (j = p; j < r;j++)//go thrue partition
    {
        //cout << "m1\n";
        if(a[j] <= x)//is this element less then last? if yes, change places of them (places will be changed back)
        {
            i++;
            temp = a[i];
            a[i] = a[j];
            a[j] = temp;
            //cout << "m2\n";
        }
    }
    //cout << "m3\n";
    //change places of elements
    temp = a[i + 1];
    a[i + 1] = a[r];
    a[r] = temp;
    return (i + 1);//return next key

}

int randomized_partition(int a1[], int p, int r)
{
    int i = 0;
    i = rand() % r + 1;
    int temp = a1[r];
    a1[r] = a1[i];
    a1[i] = temp;
    return partition(a1, p, r);
}