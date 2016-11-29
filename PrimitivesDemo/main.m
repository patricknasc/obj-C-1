//
//  main.m
//  PrimitivesDemo
//
//  Created by Developer on 11/2/13.
//  Copyright (c) 2013 EDUMobile. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        //print the size of each primitive type:
        printf("byte sizes\n==============\n");
        printf("char: %lu\n", sizeof(char));
        printf("short: %lu\n", sizeof(short));
        printf("int: %lu\n", sizeof(int));
        printf("long: %lu\n", sizeof(long));
        printf("long long: %lu\n", sizeof(long long));
        printf("float: %lu\n", sizeof(float));
        printf("double: %lu\n", sizeof(double));
        printf("long double: %lu\n", sizeof(long double));
        
        //print the ranges:
        printf("ranges\n==============\n");
        printf("char: %d .. %d\n", CHAR_MIN, CHAR_MAX);
        printf("unsigned char: 0 .. %d\n", -1 * CHAR_MIN + CHAR_MAX);
        printf("short: %d .. %d\n", SHRT_MIN, SHRT_MAX);
        printf("unsigned short: 0 .. %d\n", -1 * SHRT_MIN + SHRT_MAX);
        printf("int: %d .. %d\n", INT_MIN, INT_MAX);
        printf("unsigned int: 0 .. %ld\n", (-1 * INT_MIN + INT_MAX));
        printf("long: %ld .. %ld\n", LONG_MIN, LONG_MAX);
        printf("unsigned long: 0 .. %lu\n", ULONG_MAX);
        printf("long long: %lld .. %lld\n", LLONG_MIN, LLONG_MAX);
        printf("unsigned long long: 0 .. %llu\n\n", ULLONG_MAX);
        
        //do some stuff with primitives:
        int a = 9;
        int b;
        b = a * 2;
        printf("a = %d, b = %d\n\n", a, b);
        
        char c = 'A';
        c = c + 1;
        printf("c = %c or %d\n\n", c, c);
        
        float pi = 3.14159;
        int radius = 7;
        printf("The area of a circle with radius %d is %f\n\n", radius, pi * radius * radius);
        
        // a struct as a variable
        struct {
            BOOL isHavingFun;
            int ID;
        } programmer;
        programmer.ID = 435;
        programmer.isHavingFun = YES;
        if (programmer.isHavingFun) {
            printf("Programmer number %d is having fun\n\n", programmer.ID);
        } else {
            printf("Programmer number %d is not having fun\n\n", programmer.ID);
        }
        
        //a struct as a type:
        typedef struct {
            float x, y;
        } aPoint;
        // a variable of that type:
        aPoint myPoint;
        myPoint.x = 7.35;
        myPoint.y = 4.27;
        printf("Coordinates of myPoint: (%.2f, %.2f)\n", myPoint.x, myPoint.y);
    }
    return 0;
}

