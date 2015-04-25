//
//  ViewController.h
//  BullsEye
//
//  Created by Junel Corales on 4/24/15.
//  Copyright (c) 2015 Junel Corales. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController <UIAlertViewDelegate>

@property (nonatomic, weak) IBOutlet UISlider *slider;
@property (nonatomic, weak) IBOutlet UILabel *targetLabel;
@property (nonatomic, weak) IBOutlet UILabel *scoreLabel;
@property (nonatomic, weak) IBOutlet UILabel *roundLabel;

- (IBAction) showAlert;
- (IBAction) sliderMoved:(UISlider*)slider;
- (IBAction) startOver;

@end

