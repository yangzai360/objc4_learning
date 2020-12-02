//
//  LGPerson.m
//  KCObjc
//
//  Created by YangXiaoLong on 2020/7/24.
//

#import "Fruit.h"

@implementation Fruit

- (void)instanceMethod {
    NSLog(@"%@ ", __func__);
}

+ (void)NBMethod {
    NSLog(@"%@ ", __func__);
}


- (void)dealloc{
    NSLog(@"custom dealloc");
}
@end
