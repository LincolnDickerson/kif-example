//
//  ViewController.m
//  kif-example
//
//  Created by Lincoln Dickerson on 12/9/14.
//  Copyright (c) 2014 Spidersoft. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *displayBox;
@property (weak, nonatomic) IBOutlet UILabel *outputDisplay;
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

- (IBAction)echo:(UIButton *)sender {
    self.outputDisplay.text =self.displayBox.text;
    self.displayBox.text = @"";
}

@end