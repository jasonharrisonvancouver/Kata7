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


-(void)camel: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    [s appendString: [stringParts[0] lowercaseString]];
    for(int i = 1; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        NSString *str = [stringParts[i] capitalizedString];
        [s appendString:str];
    }
    *string = s;
}


-(void)pascal: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    for(int i = 0; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        NSString *str = [stringParts[i] capitalizedString];
        [s appendString:str];
    }
    *string = s;
}

-(void)snake: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    for(int i = 0; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        
        [s appendString:stringParts[i]];
        [s appendString:@"_"];
    }
    NSString *newString = [s substringToIndex:[s length] - 1];
    *string = newString;
}

-(void)kebab: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    for(int i = 0; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        
        [s appendString:stringParts[i]];
        [s appendString:@"-"];
    }
    NSString *newString = [s substringToIndex:[s length] - 1];
    *string = newString;
}

-(void)title: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    for(int i = 0; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        NSString *str = [stringParts[i] capitalizedString];
        [s appendString:str];
        [s appendString:@" "];
    }
    *string = s;
}

-(void)vowel: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    for(int i = 0; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        NSString *str = [stringParts[i] lowercaseString];
        
        NSRange range = {0, 128};
        NSUInteger end = [str length];
        while(range.location < end){
            unichar buffer[32];
            
            if(range.location + range.length > end){
                range.length = end - range.location;
            }
            
            [str getCharacters: buffer range: range];
            range.location += 32;
            
            for(unsigned i = 0; i < range.length; i++){
                
                unichar c = buffer[i];
               // NSLog(@"found letter %c", c);
                if(c == 'a'){
                    [s appendString:@"A"];
                }else if(c == 'e'){
                    [s appendString:@"E"];
                }else if(c == 'i'){
                    //NSLog(@"found iiiiiiii");
                    [s appendString:@"I"];
                }else if(c == 'o'){
                    [s appendString:@"O"];
                }else if(c == 'u'){
                    [s appendString:@"U"];
                }else{
                    NSString *nonVowel =[[NSString alloc] initWithFormat:@"%c", c];
                    [s appendString:nonVowel];
                }
            }
        }
        
       // [s appendString:str];
        [s appendString:@" "];
    }
    *string = s;
}


-(void)consonant: (NSMutableString **)string{
    NSMutableString *s = [[NSMutableString alloc] init];
    NSArray *stringParts = [*string componentsSeparatedByString:@" "];
    for(int i = 0; i < [stringParts count]; i++){
        [stringParts[i] lowercaseString];
        NSString *str = [stringParts[i] lowercaseString];
        
        NSRange range = {0, 128};
        NSUInteger end = [str length];
        while(range.location < end){
            unichar buffer[32];
            
            if(range.location + range.length > end){
                range.length = end - range.location;
            }
            
            [str getCharacters: buffer range: range];
            range.location += 32;
            
            for(unsigned i = 0; i < range.length; i++){
                
                unichar c = buffer[i];
                // NSLog(@"found letter %c", c);
                if(c == 'b'){
                    [s appendString:@"B"];
                }else if(c == 'c'){
                    [s appendString:@"C"];
                }else if(c == 'd'){
                    [s appendString:@"D"];
                }else if(c == 'f'){
                    [s appendString:@"F"];
                }else if(c == 'g'){
                    [s appendString:@"G"];
                }else if(c == 'h'){
                    [s appendString:@"H"];
                }else if(c == 'j'){
                    [s appendString:@"J"];
                }else if(c == 'k'){
                    [s appendString:@"K"];
                }else if(c == 'l'){
                    [s appendString:@"L"];
                }else if(c == 'm'){
                    [s appendString:@"M"];
                }else if(c == 'n'){
                    [s appendString:@"N"];
                }else if(c == 'p'){
                    [s appendString:@"P"];
                }else if(c == 'q'){
                    [s appendString:@"Q"];
                }else if(c == 'r'){
                    [s appendString:@"R"];
                }else if(c == 's'){
                    [s appendString:@"S"];
                }else if(c == 't'){
                    [s appendString:@"T"];
                }else if(c == 'v'){
                    [s appendString:@"V"];
                }else if(c == 'w'){
                    [s appendString:@"W"];
                }else if(c == 'x'){
                    [s appendString:@"X"];
                }else if(c == 'y'){
                    [s appendString:@"Y"];
                }else if(c == 'z'){
                    [s appendString:@"Z"];
                }else{
                    NSString *nonConsonant =[[NSString alloc] initWithFormat:@"%c", c];
                    [s appendString:nonConsonant];
                }
            }
        }
        
        // [s appendString:str];
        [s appendString:@" "];
    }
    *string = s;
}


- (NSString *)makeCase:(NSArray *)caseStyles{
    
    NSMutableString *string = [[NSMutableString alloc] initWithString: _string];
    
    // camel first
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"camel"]){
            [self camel:&string];
        }
    }
    
    // pascal second
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"pascal"]){
            [self pascal:&string];
        }
    }

    // snake third
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"snake"]){
            [self snake:&string];
        }
    }
    
    // kebab fourth
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"kebab"]){
            [self kebab:&string];
        }
    }
    

    // title fifth
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"title"]){
            [self title:&string];
        }
    }

    // vowels next
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"vowel"]){
            [self vowel:&string];
        }
    }

    // vowels next
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"consonant"]){
            [self consonant:&string];
        }
    }

    
    // ...then upper...
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"upper"]){
            string = [NSMutableString stringWithString: [string uppercaseString]];
        }
    }

    
    // ...finally, lower...
    for(int i = 0; i < [caseStyles count]; i++){
        if([caseStyles[i] isEqualToString:@"lower"]){
            string = [NSMutableString stringWithString: [string lowercaseString]];
        }
    }
    
   // NSLog(@"%@", string);
    return string;
}
@end
