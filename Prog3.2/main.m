//
//  main.m
//  Prog3.2
//
//  Created by Tống Đăng Tình on 11/17/17.
//  Copyright © 2017 Tống Đăng Tình. All rights reserved.
//
//-----------------------------------------------------'
// Program to work with Fraction -Class version

#import <Foundation/Foundation.h> // This is a system file. That is not file that you created.
                                  // #import says to import or include the information from that file  into the program, exactly as if the contents of the file were typed into the program at that point.
                                   // You imported the file Foundation.h. It has information about other classes and functions that are used later in the program


 //------------_interface section-------------------------------------
@interface Fraction : NSObject
{
    int numerator;
    int denominator;
    
}

-(void) print;
-(void) setNumerator: (int) n;
-(void) setDenominator: (int) d;


@end


// ------------------implementation section----------------------------

@implementation Fraction

// print method
-(void) print {
    NSLog(@"%i / %i", numerator, denominator);
}


-(void) setNumerator:(int)n {
    numerator = n;
}


-(void) setDenominator:(int)d {
    denominator =d;
}
@end


//-----------Program section-----------------

int main(int argc, const char * argv[]) { // Main is a special name that indicates precisely where thr program is to
                                        // begin execution
                                         // The reserved wold int that precedes main specifies the type of value main return, which is an integer.
    @autoreleasepool {
        // insert code here...
        //NSLog(@"Hello, World!");
        Fraction *myFraction;
        // Create an instance of a Fraction
        myFraction = [[Fraction alloc] init];
      //  myFraction = [Fraction init];
        
        // Set fraction to 1/3
        [myFraction setNumerator:1 ];
        [myFraction setDenominator:3];
        
        
        // Display the fraction using the print method
        [myFraction print];
        
    }
    return 0;
}
