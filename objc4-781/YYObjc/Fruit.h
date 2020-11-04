//
//  LGPerson.h
//  KCObjc
//
//  Created by YangXiaoLong on 2020/7/24.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Fruit : NSObject

@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *season;

@property (nonatomic, assign) BOOL *isFresh;

@end

NS_ASSUME_NONNULL_END
