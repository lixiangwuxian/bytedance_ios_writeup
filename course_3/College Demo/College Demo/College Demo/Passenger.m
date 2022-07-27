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
