//
//  main.m
//  homework1
//
//  Created by Galina on 27.01.17.
//  Copyright © 2017 GalyaHome. All rights reserved.
//

#import <Foundation/Foundation.h>
#include <stdlib.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 0, b = 0, c = 0, average = 0, max = 0;
        float m = 0, n = 0, differenceM = 0, differenceN = 0, aDescr = 0, bDescr = 0, cDescr = 0, D = 0, x1 = 0, x2 = 0;
    
        NSLog(@"Input number a");
        scanf("%d", &a);

        NSLog(@"Input number b");
        scanf("%d", &b);
        
        NSLog(@"Input number c");
        scanf("%d", &c);

//avarage
        average = (a + b + c)/3;
        NSLog(@"Avarage = %d", average);
        
//max
        max = a;
        if (max < b)
        { max = b;}
        if (max < c)
        { max = c;}
        
        NSLog(@"Max = %d", max);
        
//max ?:
        max = (a < b) ?  b : a;
        max = (max < c) ? c : max;
        NSLog(@"Max = %d", max);
        
// odd and even
        if ((a % 2) == 0)
            NSLog(@"%d is even number.", a);
        else
            NSLog(@"%d is odd number.", a);
        
        if ((b % 2) == 0)
            NSLog(@"%d is even number.", b);
        else
            NSLog(@"%d is odd number.", b);
        
        if ((c % 2) == 0)
            NSLog(@"%d is even number.", c);
        else
            NSLog(@"%d is odd number.", c);
        
// near 10
        NSLog(@"Input float number m ");
        scanf("%f", &m);
        differenceM = fabs(10 - m);
        
        NSLog(@"Input float number n ");
        scanf("%f", &n);
        differenceN = fabs(10 - n);
        
        if (differenceN < differenceM)
        {
            NSLog(@"%f is closer to 10 then %f ", n, m);
        }
        else
            if (differenceN > differenceM) {
                NSLog(@"%f is closer to 10 then %f", m, n);
            }
            else NSLog(@"%f = %f", m, n);
 
//discriminant
        NSLog(@"Input number a for quadratic equation");
        scanf("%f", &aDescr);
        
        NSLog(@"Input number b for quadratic equation");
        scanf("%f", &bDescr);
        
        NSLog(@"Input number c for quadratic equation");
        scanf("%f", &cDescr);
        
        NSLog(@"Quadratic equation is %fx`2 + %fx + %f = 0", aDescr, bDescr, cDescr);
        D = bDescr*bDescr - 4*aDescr*cDescr;
        NSLog(@"D = %f", D);
        NSLog(@"sqrt D = %f", sqrt(D));
        if (D == 0)
        {
            x1 = (-1*bDescr)/(2*aDescr);
            x2 = x1;
            NSLog(@"D = 0: x1 = %f, x2 = %f", x1, x2);
        }
        if (D > 0)
        {
            x1 = (-1*bDescr + sqrt(D))/(2*aDescr);
            x2 = (-1*bDescr - sqrt(D))/(2*aDescr);
            NSLog(@"D > 0: x1 = %f, x2 = %f", x1, x2);
        }
        if (D < 0)
        {
            NSLog(@"There is no answer, as D < 0.");
        }
    }
    return 0;
}
