# Passenger.h

```objectivec

//
//  Passenger.h
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Person.h"

NS_ASSUME_NONNULL_BEGIN

@interface Orders : NSObject
@property (nonatomic, strong) NSString *name;
@property (nonatomic,strong) NSDate *date;
@property (nonatomic,strong) NSString *origin;
@property (nonatomic,strong) NSString *destination;
@property (nonatomic,strong) NSInteger *status;
// Function 方法
// 去订票
- (void)go_booking  
    who_booking:(NSString *)person_name
    origin:(NSString *)origin
    destination:(NSString *)destination 
    date:(NSDate *)date;

// 去检票
- (void)go_check_ticket 
@end

@interface Passenger : Person
// @property 属性
// 是否年满 18 岁
@property (nonatomic,assign,readonly) NSInteger* age;
// 历史订单 （数组）
@property (nonatomic,strong) NSArray<Orders *> *history_orders;
// 未出行订单 （数组）
@property (nonatomic,strong) NSArray<Orders *> *untraveled_orders;
- (void)creat_order 
    order:(Orders *)order;
- (void)use_order;
- (void)cancel_order
    order:(Orders *)order;
@end

NS_ASSUME_NONNULL_END

```

# Passenger.m

```objectivec
//
//  Passenger.m
//  College Demo
//
//  Created by mashujun on 2022/7/18.
//

#import "Passenger.h"


@implementation Orders
- (void)go_booking  
who_booking:(NSString *)person_name
origin:(NSString *)origin
destination:(NSString *)destination 
date:(NSDate *)date
{
    NSLog(@"%@ is booking %@ to %@ on %@", person_name,origin, destination, date);
    self.person_name = person_name;
    self.origin = origin;
    self.destination = destination;
    self.date = date;
    self.status = false;//unchecked
}

- (void)go_check_ticket 
{
    NSLog(@"%@ is checking ticket at %@", self.person_name, self.date);
    self.status = true;//checked
}

@end

@implementation Passenger
- (void)creat_order 
order:(Orders *)order
{
    [self.untraveled_orders addObject:order];
}

- (void)use_order
{
    Orders *order = [self.untraveled_orders firstObject];
    [self.untraveled_orders removeObject:order];
    [self.traveled_orders addObject:order];
    order.go_check_ticket();
}

- (void)cancel_order
order:(Orders *)order
{
    [self.untraveled_orders removeObject:order];
}
@end

```
