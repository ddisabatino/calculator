//
//  DPDViewController.m
//  Calculator
//
//  Created by Devin DiSabatino on 1/22/13.
//  Copyright (c) 2013 Disabs. All rights reserved.
//

#import "DPDViewController.h"

@interface DPDViewController ()

@end

@implementation DPDViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    
	// Do any additional setup after loading the view, typically from a nib.
    
    UIImage *patternImage = [UIImage imageNamed:@"textured_paper.png"];
    self.view.backgroundColor = [UIColor colorWithPatternImage:patternImage];
    
    firstNumber = 0;
    secondNumber = 0;
    solution = 0;
    currentNumber = @"";
    operation = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pressedButton:(id)sender
{
    UIButton *buttonThatWasPressed = (UIButton *)sender;
    
    NSString *buttonText = buttonThatWasPressed.titleLabel.text;
    float value = [buttonText integerValue];
    
    NSLog(@"button pressed %f ok", value);
    currentNumber = [NSString stringWithFormat:@"%@%@", currentNumber, buttonText];
    display.text = currentNumber;
}

-(IBAction)negative:(id)sender
{
    currentNumber = [NSString stringWithFormat:@"%@%@", @"-", currentNumber];
    display.text = currentNumber;
}

-(IBAction)clear:(id)sender
{
    currentNumber = @"";
    firstNumber = 0;
    secondNumber=0;
    display.text = @"";
}

-(IBAction)operationPressed:(id)sender
{
    UIButton *buttonThatWasPressed = (UIButton *)sender;
    NSString *buttonText = buttonThatWasPressed.titleLabel.text;


    
    firstNumber = currentNumber.floatValue;
    operation = buttonText;
    NSLog(@"Operation success. Number %f Operation %@", firstNumber, operation);
    
    currentNumber = @"";
    display.text = @"";
}

-(IBAction)equalPressed:(id)sender
{
    secondNumber = currentNumber.floatValue;
    NSLog(@"Equal Pressed. First Number %f. Second Number %f. Operation %@", firstNumber, secondNumber, operation);
    if ([operation isEqualToString:@"+"])
    {
        solution = firstNumber + secondNumber;
        display.text = [NSString stringWithFormat:@"%f",solution];
    }
    else if ([operation isEqualToString:@"-"])
    {
        solution = firstNumber - secondNumber;
        display.text = [NSString stringWithFormat:@"%f",solution];
    }
    else if ([operation isEqualToString:@"*"])
    {
        solution = firstNumber * secondNumber;
        display.text = [NSString stringWithFormat:@"%f",solution];
    }
    else if (firstNumber==0 && [operation isEqualToString:@"/"])
    {
        display.text = @"Cannot divide by 0";
    }
    else if ([operation isEqualToString:@"/"])
    {
        solution = firstNumber / secondNumber;
        display.text = [NSString stringWithFormat:@"%f",solution];
    }
    else
    {
        display.text = @"Error";
    }

    firstNumber = solution;
    secondNumber = 0;
    currentNumber = [NSString stringWithFormat:@"%f", solution];
    
}

@end
