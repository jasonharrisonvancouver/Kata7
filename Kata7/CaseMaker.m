//
//  CaseMaker.m
//  Kata7
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import "CaseMaker.h"

@implementation CaseMaker

- (instancetype)initWithString:(NSString *)string{
    self = [super init];
    
    if(self){
        _string = string;
    }
    
    return self;
    
}


-(NSString *)camel{
    
    
    NSMutableString *s = [[NSMutableString alloc] init];
    
    NSArray *stringParts = [_string componentsSeparatedByString:@" "];
    
    
    [s appendString: [stringParts[0] lowercaseString]];
    
    for(int i = 1; i < [stringParts count]; i++){
        
        [stringParts[i] lowercaseString];
        NSString *str = [stringParts[i] capitalizedString];
        
        [s appendString:str];
    }
    _string = s;
    return s;
    
}

- (NSString *)makeCase:(NSArray *)caseStyles{
    // camel first
    for(int i = 0; i < [caseStyles count]; i++){
        [self camel];
    }
    return _string;
}
@end
