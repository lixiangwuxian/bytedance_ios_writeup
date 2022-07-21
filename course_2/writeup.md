## objective-c

```objectivec
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
```

```objectivec
//Student.m
#include"Student.h"

@implementation Student
-(void) study:(float)time
{
    printf("This student has studying for %f hours.\n", time);
    //@NSlog("This student has studying for %f hours.\n", time);
}
@end

```

[Files](code/oc/)

## swift

```swift
 //Student.swift
class Student {
    var name: String
    var major: String
    var age: Int
    init(name: String, major: String, age: Int) {
        self.name = name
        self.major = major
        self.age = age
    }
    study(time: float) {
        print("This student has studying for \(time) hours.")
    }
}
```

[Files](code/swift/)
