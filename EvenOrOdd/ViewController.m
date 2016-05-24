//
//  ViewController.m
//  EvenOrOdd
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import "ViewController.h"

// Text field
// Button that says "Evaluate"
// Method to evaluate input as even or odd
// Throw an error if it is not a whole number


@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(NSString *)oddOrEven:(int)intToProcess {
    NSString *oddOrEven = @"";
    if (intToProcess % 2 == 0) {
        oddOrEven = @"Even";
        return oddOrEven;
    } else {
        oddOrEven = @"Odd";
        return oddOrEven;
    }
}


- (NSString *)isValidFormat:(NSString *)userInput {
    NSError *error;
    NSRegularExpression *regex = [NSRegularExpression regularExpressionWithPattern:@"\\D" options:NSRegularExpressionCaseInsensitive error:&error];
    NSUInteger numberOfMatches = [regex numberOfMatchesInString:userInput
                                                        options:0
                                                          range:NSMakeRange(0, [userInput length])];
    if (numberOfMatches > 0) {
        return @"Please enter an integer";
    } else {
        int intToProcess = [userInput intValue];
        return [self oddOrEven:intToProcess];
    }
}
- (IBAction)evaluateInput:(id)sender {
    NSString *userInput = _userInput.text;
    NSString *newLabelText = [self isValidFormat:userInput];
    _oddOrEvenLabel.text = newLabelText;
    
}

@end
