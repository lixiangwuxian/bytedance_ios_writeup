//Student.m
#include"Student.h"

@implementation Student
-(void) study:(float)time
{
    printf("This student has studying for %f hours.\n", time);
    //@NSlog("This student has studying for %f hours.\n", time);
}
@end

int main(){
    NSLog(@"hello world");
    Student *s = [[Student alloc] init];
    [s study:3.0];
    return 0;
}