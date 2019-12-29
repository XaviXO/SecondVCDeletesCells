//
//  ViewController.m
//  SecondVCDeletesCells
//
//  Created by Javier Calderon Jr. on 12/29/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    if (self.isMovingFromParentViewController) {
        [self.delegate deleteRowInTableview:1];
    }
}


-(IBAction)moveToListview:(id)sender
{
    [self.delegate deleteRowInTableview:1];
}
@end
