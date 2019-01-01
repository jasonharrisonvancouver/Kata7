//
//  CaseMaker.h
//  Kata7
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CaseMaker : NSObject

@property NSString *string;

- (instancetype)initWithString:(NSString *)string;

- (NSString *)makeCase:(NSArray *)caseStyles;
@end

NS_ASSUME_NONNULL_END
