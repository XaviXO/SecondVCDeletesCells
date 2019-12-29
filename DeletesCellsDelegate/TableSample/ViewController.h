//
//  ViewController.h
//  SecondVCDeletesCells
//
//  Created by Javier Calderon Jr. on 12/29/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "ListViewController.h"

@interface ViewController : UIViewController

@property (nonatomic, strong)id <DeleteRowInTableviewDelegate> delegate;

@end
