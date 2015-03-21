//
//  ViewController.m
//  FramedArrangement
//
//  Created by Douglas Voss on 3/21/15.
//  Copyright (c) 2015 DevMountain. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.redView = [UIView new];
    self.redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:self.redView];
    
    self.greenView = [UIView new];
    self.greenView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:self.greenView];
    
    self.blueView = [UIView new];
    self.blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:self.blueView];
    
    self.yellowView = [UIView new];
    self.yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:self.yellowView];
    
    //[self layoutSquares];
    //[self layoutHorizontalRectangles];
    //[self layoutVerticalRectangles];
    [self layoutDiagonalSquares];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (void)layoutSquares
{
    float squareWidth = CGRectGetWidth(self.view.bounds) / 2.0;
    float squareHeight = CGRectGetHeight(self.view.bounds) / 2.0;
    
    float square_2nd_x = squareWidth;
    float square_2nd_y = squareHeight;
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(square_2nd_x, 0.0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0.0, square_2nd_y, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(square_2nd_x, square_2nd_y, squareWidth, squareHeight);
}

- (void)layoutHorizontalRectangles
{
    float squareWidth = CGRectGetWidth(self.view.bounds);
    float squareHeight = CGRectGetHeight(self.view.bounds) / 4.0;
    
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(0.0, squareHeight*1.0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(0.0, squareHeight*2.0, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(0.0, squareHeight*3.0, squareWidth, squareHeight);
}

- (void)layoutVerticalRectangles
{
    float squareWidth = CGRectGetWidth(self.view.bounds) / 4.0;
    float squareHeight = CGRectGetHeight(self.view.bounds);
    
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth*1.0, 0.0, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(squareWidth*2.0, 0.0, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth*3.0, 0.0, squareWidth, squareHeight);
}

- (void)layoutDiagonalSquares
{
    /*float squareWidth = CGRectGetWidth(self.view.bounds)/4.0;
    float squareHeight = CGRectGetHeight(self.view.bounds)/4.0;
    float angle = 45*(3.14159265/180);
    CGAffineTransform transform = CGAffineTransformMakeRotation(angle);
    self.redView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    self.redView.transform = transform;
    self.greenView.frame = CGRectMake(squareWidth*2.0, squareHeight, squareWidth, squareHeight);
    self.greenView.transform = transform;
    self.blueView.frame = CGRectMake(squareWidth, squareHeight*2.0, squareWidth, squareHeight);
    self.blueView.transform = transform;
    self.yellowView.frame = CGRectMake(squareWidth*2.0, squareHeight*2.0, squareWidth, squareHeight);
    self.yellowView.transform = transform;*/
    
    float squareWidth = CGRectGetWidth(self.view.bounds)/4.0;
    float squareHeight = CGRectGetHeight(self.view.bounds)/4.0;
    
    self.redView.frame = CGRectMake(0.0, 0.0, squareWidth, squareHeight);
    self.greenView.frame = CGRectMake(squareWidth, squareHeight, squareWidth, squareHeight);
    self.blueView.frame = CGRectMake(squareWidth*2.0, squareHeight*2.0, squareWidth, squareHeight);
    self.yellowView.frame = CGRectMake(squareWidth*3.0, squareHeight*3.0, squareWidth, squareHeight);
    
}

@end
