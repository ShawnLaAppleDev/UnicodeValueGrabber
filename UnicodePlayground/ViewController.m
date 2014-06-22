//
//  ViewController.m
//  UnicodePlayground
//
//  Created by Shawn Larson on 6/20/14.
//  Copyright (c) 2014 Shawn Larson. All rights reserved.
//

#import "ViewController.h"
#import "GetUnicodeValue.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UITextField *textField;
@property (weak, nonatomic) IBOutlet UILabel *ASCIILabel;
@property (weak, nonatomic) IBOutlet UILabel *HexLabel;
- (IBAction)getValues:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)getValues:(id)sender {
    GetUnicodeValue *unicodeValue = [[GetUnicodeValue alloc] init];
    self.ASCIILabel.text = [unicodeValue returnUnicodeValue:self.textField.text];
    self.HexLabel.text = [unicodeValue returnUnicodeHexValue:self.textField.text];
}
@end
