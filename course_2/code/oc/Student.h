//Student.h
#include<stdio.h>
#include<Foundation/Foundation.h>
@interface Student : NSObject
{
    char* name;
    char* major;
    int age;
}
    -(void) study:(float)time;
@end