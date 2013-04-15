//
//  DPDViewController.h
//  Calculator
//
//  Created by Devin DiSabatino on 1/22/13.
//  Copyright (c) 2013 Disabs. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DPDViewController : UIViewController
{
    IBOutlet UILabel *display;
    
    float firstNumber;
    float secondNumber;
    float solution;
    NSString *operation;
    NSString *currentNumber;
    
}

- (IBAction)pressedButton:(id)sender;
-(IBAction)operationPressed:(id)sender;
-(IBAction)equalPressed:(id)sender;
-(IBAction)negative:(id)sender;
-(IBAction)clear:(id)sender;


@end
