//
//  main.m
//  task7
//
//  Created by Galina on 27.09.16.
//  Copyright (c) 2016 GalyaHome. All rights reserved.
//
/*Задача 7
 Запросить у пользователя два числа.
 - Если первое больше второго, то вычислить их разницу и вывести данные на печать.
 - Если второе число больше первого, то вычислить их сумму и вывести на печать
 - Если оба числа равны, то вывести это значение на печать.
 - Постарайтесь использовать только три переменные 
 */

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int  number1, number2;
        NSLog(@"Please enter a number1: ");
        scanf("%d", &number1);
        NSLog(@"Please enter a number2: ");
        scanf("%d", &number2);
        if (number1 > number2)
        {
            NSLog(@"number1 - number2 = %d ", number1 - number2);
        }
        else
            if (number1 < number2)
            {
                NSLog(@"number1 + number2 = %d ", number1 + number2);
                
            }
            else
            {
                NSLog(@" Number1 = Number2 = %d", number1);
            }
        
        
        
    }
    return 0;
}
