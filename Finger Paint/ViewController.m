//
//  ViewController.m
//  Finger Paint
//
//  Created by Chelsea Liu on 6/19/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}






//should make into collection view

- (IBAction)darkGreen:(id)sender {
    self.drawingView.penColor = [UIColor colorWithRed:0 green:128/255.0 blue:0 alpha:1.0];
    
}
- (IBAction)lightGreen:(id)sender {
    self.drawingView.penColor = [UIColor greenColor];

}
- (IBAction)yellow:(id)sender {
    self.drawingView.penColor = [UIColor yellowColor];

}
- (IBAction)orange:(id)sender {
    self.drawingView.penColor = [UIColor orangeColor];

}
- (IBAction)red:(id)sender {
    self.drawingView.penColor = [UIColor redColor];

}
- (IBAction)pink:(id)sender {
    self.drawingView.penColor = [UIColor magentaColor];

}
- (IBAction)lightBlue:(id)sender {
    self.drawingView.penColor = [UIColor cyanColor];

}
- (IBAction)darkBlue:(id)sender {
    self.drawingView.penColor = [UIColor blueColor];


}

@end
