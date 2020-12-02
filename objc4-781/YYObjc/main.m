//
//  main.m
//  KCObjc
//
//  Created by YangXiaoLong on 2020/7/24.
//

#import <Foundation/Foundation.h>
#import "Fruit.h"

#import <objc/runtime.h>

void printClassAllProperties(Class cls) {
    unsigned int outCount = 0;
    objc_property_t *properties = class_copyPropertyList(cls, &outCount);
    NSMutableArray *propertiesAry = [NSMutableArray arrayWithCapacity:outCount];
    for (int i = 0; i<outCount; i++) {
        // objc property t 属性
        objc_property_t property = properties[i];
        
        printf("\n%s,%s\n", property_getName(property), property_getAttributes(property));
        
        // 获取属性名称 C字符串
        const char *cName = property_getName(property);
        // 转换成 OC 字符串
        NSString *name = [NSString stringWithCString:cName encoding:NSUTF8StringEncoding];
        [propertiesAry addObject:name];
        NSLog(@"属性： %@", name);
    }
}


int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
//        NSObject *objc1 = [[NSObject alloc] init];
        {
//            printClassAllProperties(Fruit.class);
            Fruit *banana = [[Fruit alloc] init];
        }
        
        NSLog(@"Hello, World!");
        sleep(1);
    }
    return 0;
}
