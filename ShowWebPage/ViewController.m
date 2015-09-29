//
//  ViewController.m
//  ShowWebPage
//
//  Created by DCT on 9/14/15.
//  Copyright © 2015 DCT. All rights reserved.
//
//  The MIT License (MIT)
//
//  Created by DCT on 9/28/15.
//  Copyright (c) 2015 DCT. All rights reserved.
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.

//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController{
    
    // Create a webview
    UIWebView *createWebView;
   
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    //Initiate a view, same size as the iphone screen
    CGRect  viewRect = CGRectMake(self.view.bounds.origin.x, self.view.bounds.origin.y, self.view.bounds.size.width, self.view.bounds.size.height);
    createWebView = [[UIWebView alloc] initWithFrame:viewRect];
    
    
    //Fill the background of the view with system color black
    createWebView.backgroundColor = [UIColor whiteColor];
    
    //Add the view you just created to the app
    [self.view addSubview:createWebView];
    
    NSString *fullURL = @"http://www.doreencode.com";
    NSURL *url = [NSURL URLWithString:fullURL];
    NSURLRequest *requestObj = [NSURLRequest requestWithURL:url];
    [createWebView loadRequest:requestObj];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
