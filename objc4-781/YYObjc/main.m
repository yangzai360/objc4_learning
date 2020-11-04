//
//  main.m
//  KCObjc
//
//  Created by YangXiaoLong on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "YYPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSObject *objc1 = [[NSObject alloc] init];
        YYPerson *objc2 = [[YYPerson alloc] init];

        NSLog(@"Hello, World! %@ - %@", objc1, objc2);
    }
    return 0;
}
