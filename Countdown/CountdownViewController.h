//
//  CountdownViewController.h
//  Countdown
//
//  Created by Kyle Frost on 9/7/13.
//  Copyright (c) 2013 Kyle Frost. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CountdownViewController : UIViewController {
    
    NSDate *destinationDate;
    
    IBOutlet UILabel *countdownLabel;
    
    NSTimer *timer;
    
}

-(void)updateLabel;

@property (weak, nonatomic) IBOutlet UINavigationBar *myBar;
@property(nonatomic,readonly) UIBarPosition barPosition;

@end
