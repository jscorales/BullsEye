//
//  AboutViewController.m
//  BullsEye
//
//  Created by Junel Corales on 4/25/15.
//  Copyright (c) 2015 Junel Corales. All rights reserved.
//

#import "AboutViewController.h"

@interface AboutViewController ()

@end

@implementation AboutViewController

- (void) viewDidLoad {
    [super viewDidLoad];
    [self initContents];
}

- (void) didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

- (BOOL) prefersStatusBarHidden {
    return YES;
}

- (void) initContents {
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"BullsEye" ofType:@"html"];
    NSData *htmlData = [NSData dataWithContentsOfFile:htmlFile];
    NSURL *baseUrl = [NSURL fileURLWithPath:[[NSBundle mainBundle] bundlePath]];
    
    [self.webView loadData:htmlData MIMEType:@"text/html" textEncodingName:@"UTF-8" baseURL:baseUrl];
}

- (IBAction) close {
    [self.presentingViewController dismissViewControllerAnimated:YES completion:nil];
}

@end
