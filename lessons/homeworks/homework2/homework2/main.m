//
//  main.m
//  homework2
//
//  Created by Galina on 27.01.17.
//  Copyright © 2017 GalyaHome. All rights reserved.
//
/*
 1. Найдите среднее арифметическое массива из 10 элементов типа double
 2. Создайте массив из 11 случайных целых чисел, выведите массив на экран в
 строку. Определите какой элемент встречается в массиве чаще всего и выведите об этом сообщение на экран. Если два каких-то элемента встречаются одинаковое количество раз, то не выводите ничего.
 3. Создайте массив из 11 случайных целых чисел. Подсчитать количество повторений каждого числа в массиве.
 4. Пользователь вводит с клавиатуры натуральное число большее 3, которое сохраняется в переменную n. Если пользователь ввёл не подходящее число, то программа должна просить пользователя повторить ввод. Создать массив из n случайных целых чисел из отрезка [0;n] и вывести его на экран. Создать второй массив только из чётных элементов первого массива, если они там есть, и вывести его на экран.
 5. Транспонирование матрицы:
 Необходимо транспонировать двумерный массив чтобы столбец превратился в строчку. Например:
 Массив: {{5,10,3,0,0}, {4,9,0,0,0},{0,0,16,0,0},{22,33,1,6,10}}
 Транспонированный массив: {{5,4,0,22}, {10,9,0,33}, {3,0,16,1}, {0,0,0,6}. {0,0,0,10}}*/
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
           double sum = 0;

//everage
        double mas [10];
            for(int i = 0; i < 10; i++)
            {
                mas[i] = i;
                NSLog(@"%f, ", mas[i]);
                sum += mas[i];
            }
            NSLog(@"\nEverage = %f", sum/10);
    }
    
//random
    int randomMas[10];
    int quantity[10];
    int max = 0, maxNumber = 0, counter = 0;
    
    for(int i = 0; i < 10; i++)
    {
        quantity[i] = 0;
    }
    NSLog(@"\nrandomMas: ");
    for(int i = 0; i < 11; i++)
    {
        randomMas[i] = rand() % 9;
        NSLog(@"%d, ", randomMas[i]);
        quantity[randomMas[i]] ++;
    }
    
    for(int i = 0; i < 10; i++)
    {
        if (quantity[i] > 1)
        {
            NSLog(@"\n %d is present in randomMas %d case(s)", i, quantity[i]);
        }
        
        if (quantity[i] > max)
        {
            max = quantity[i];
            maxNumber = i;
        }
    }
    
    for(int i = 0; i < 10; i++)
    {
        if (max == quantity[i])
        {
            counter++;
        }
    }
    if (counter == 1)
    {
        NSLog(@"\n\n %d is present in randomMas %d times. It is maximum.", maxNumber, max);
    }

    
// natural number
    
    bool flag = false;
    float n = 0;
    int N = 0, countEven = 0, j = 0;
    
    
    while (flag == false) {
        NSLog(@"\nInput natural number > 3.");
        scanf("%f", &n);
        if (((int)n % 1) != 0) {
            NSLog(@"Number is not natural.");
        } else if (n <= 3) {
            NSLog(@"Number is <= 3.");
        } else {
            flag = true;
        }
    }
    // Создать массив из n случайных целых чисел из отрезка [0;n] и вывести его на экран
    // Создать второй массив только из чётных элементов первого массива, если они там есть, и вывести его на экран.
    if (flag == true)
    {
        N = (int)n;
        int randomMasN[N];
        int massEven[(int)n];
        
        NSLog(@"\nrandomMasN: ");
        for(int i = 0; i < N; i++)
        {
            randomMasN[i] = rand() % ((int)n);
            if ((randomMasN[i] % 2) == 0)
            {
                countEven ++;
                massEven[j] = randomMasN[i];
                j++;
            }
            NSLog(@"%d, ", randomMasN[i]);
        }
        NSLog(@"\nmassEven: ");
        for(int i = 0; i < countEven; i++) {
            NSLog(@"%d, ", massEven[i]);
        }
        
    }
//транспонирование
// Массив: {{5,10,3,0,0}, {4,9,0,0,0},{0,0,16,0,0},{22,33,1,6,10}}
    int matrix[4][5] = {{5,10,3,0,0}, {4,9,0,0,0},{0,0,16,0,0},{22,33,1,6,10}};
    int Tmatrix[5][4];
    NSLog(@"\nmatrix:");
    for(int i = 0; i < 4; i++) {
        NSLog(@"");
        for (int m = 0; m < 5; m++)
        {
            Tmatrix[m][i] = matrix[i][m];
            NSLog(@"%d ", matrix[i][m]);
        }
    }
    NSLog(@"\n\nTmatrix:");
    for(int i = 0; i < 5; i++) {
        NSLog(@"");
        for (int m = 0; m < 4; m++)
        {
            NSLog(@"%d ", Tmatrix[i][m]);
        }
    }
    
    return 0;
}
