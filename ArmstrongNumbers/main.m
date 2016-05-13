//
//  main.m
//  ArmstrongNumbers


#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        //The example makes no sense as written, they mean 1^3 + 5^3 + 3^3 = 153
        
        NSString *line = @"315";
        NSInteger lineInt = [line integerValue];
        
        NSInteger n = line.length;
        NSInteger sumOfDigits = 0;
        
        NSMutableArray *digitsMutArray = [[NSMutableArray alloc]init];
        
        // seperate number string into digits
        NSInteger i = 0;
        for (i = 0; i < line.length; i++) {
            [digitsMutArray addObject:[NSString stringWithFormat:@"%c", [line characterAtIndex:i]]];
        }
        
        // each digit to the nth power w/o pow() of course...
        for (NSString *digitString in digitsMutArray) {
            NSInteger powerOfDigit = 1;
            NSInteger digitInt = [digitString integerValue];
            
            NSInteger j = 0;
            for (j = 0; j < n; j++) {
                powerOfDigit = powerOfDigit *digitInt;
            }
            
            sumOfDigits += powerOfDigit;
        }
        
        if (lineInt == sumOfDigits) {
            NSLog(@"true");
        }
        else {
            NSLog(@"false");
        }
        
    }
    return 0;
}

