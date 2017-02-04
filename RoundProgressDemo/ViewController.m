//
//  ViewController.m
//  RoundProgressDemo
//
//  Created by Masroo Elahi on 04/02/2017.
//  Copyright © 2017 Masroor Elahi. All rights reserved.
//

#import "ViewController.h"
#import "RoundProgress.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet RoundProgress *progressBar;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _progressBar.progress = 0.6;
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
