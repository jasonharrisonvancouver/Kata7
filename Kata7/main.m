//
//  main.m
//  Kata7
//
//  Created by jason harrison on 2019-01-01.
//  Copyright © 2019 jason harrison. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CaseMaker.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        CaseMaker *caseMaker = [[CaseMaker alloc] initWithString:@"this is a string"];
        
        NSLog(@"%@", [caseMaker makeCase:@[@"camel"]]); // thisIsAString
        NSLog(@"%@", [caseMaker makeCase:@[@"pascal"]]); // ThisIsAString
        NSLog(@"%@", [caseMaker makeCase:@[@"snake"]]); // this_is_a_string
        NSLog(@"%@", [caseMaker makeCase:@[@"kebab"]]); // this-is-a-string
        NSLog(@"%@", [caseMaker makeCase:@[@"title"]]); // This Is A String
        NSLog(@"%@", [caseMaker makeCase:@[@"vowel"]]); // thIs Is A strIng
        NSLog(@"%@", [caseMaker makeCase:@[@"consonant"]]); // THiS iS a STRiNG
        NSLog(@"%@", [caseMaker makeCase:@[@"upper", @"snake"]]); // THIS_IS_A_STRING
    }
    return 0;
}
