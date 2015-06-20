//
//  FingerPaint.m
//  Finger Paint
//
//  Created by Chelsea Liu on 6/19/15.
//  Copyright (c) 2015 Chelsea Liu. All rights reserved.
//

#import "FingerPaint.h"



@implementation FingerPaint

//read more

//- (instancetype)initWithCoder:(NSCoder *)aDecoder
//{
//    if (self = [super initWithCoder:aDecoder]) {
//        self.path = [[UIBezierPath alloc] init];
//        [self setMultipleTouchEnabled:NO];
//        UIColor *newColor = [[UIColor alloc] init];
//        newColor = self.penColor;
//    }
//    
//    return self;
//}



- (void) touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    self.path = [[UIBezierPath alloc] init];
    self.path.lineWidth = 10;
    UITouch *touch = [touches anyObject];
    [self.path moveToPoint:[touch locationInView:self]];
    
}

- (void) touchesMoved:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [touches anyObject];
    [self.path addLineToPoint:[touch locationInView:self]];
    [self setNeedsDisplay];

}


- (void) touchesEnded:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self touchesMoved:touches withEvent:event];
    
}

- (void) touchesCancelled:(NSSet *)touches withEvent:(UIEvent *)event {
    
    [self touchesMoved:touches withEvent:event];

}

- (void) drawRect:(CGRect)rect {
    
    [self.penColor setStroke];
    [self.path stroke];
    [self setNeedsDisplay];
}

@end
