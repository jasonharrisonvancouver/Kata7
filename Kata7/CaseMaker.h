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

- (void)camel: (NSMutableString **)string;
- (void)pascal: (NSMutableString **)string;
- (void)snake: (NSMutableString **)string;
- (void)kebab: (NSMutableString **)string;
- (void)title: (NSMutableString **)string;

- (void)vowel: (NSMutableString **)string;
- (void)consonant: (NSMutableString **)string;


- (NSString *)makeCase:(NSArray *)caseStyles;
@end

NS_ASSUME_NONNULL_END
