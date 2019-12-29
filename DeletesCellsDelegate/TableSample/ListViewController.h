//
//  ListViewController.h
//  SecondVCDeletesCells
//
//  Created by Javier Calderon Jr. on 12/29/19.
//  Copyright © 2019 RockefellerFiles. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol DeleteRowInTableviewDelegate <NSObject>

-(void)deleteRowInTableview:(NSInteger )rowToDelete;

@end

@interface ListViewController : UIViewController<DeleteRowInTableviewDelegate,UITableViewDelegate, UITableViewDataSource>

@end
