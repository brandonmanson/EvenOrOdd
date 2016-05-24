//
//  ViewController.h
//  EvenOrOdd
//
//  Created by DetroitLabs on 5/23/16.
//  Copyright © 2016 DetroitLabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController

-(NSString *)isValidFormat:(NSString *)userInput;
-(NSString *)oddOrEven:(int)intToProcess;

@property (weak, nonatomic) IBOutlet UILabel *oddOrEvenLabel;
@property (weak, nonatomic) IBOutlet UITextField *userInput;



@end

