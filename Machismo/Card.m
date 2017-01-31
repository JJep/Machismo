//
//  Card.m
//  Machismo
//
//  Created by Jep Xia on 2016/12/8.
//  Copyright © 2016年 Jep Xia. All rights reserved.
//

#import "Card.h"
@interface Card()

@end

@implementation Card



- (int)match:(NSArray *)otherCards
{
    int score = 0;
    for (Card *card in otherCards) {
        if ([card.contents isEqualToString:self.contents]) {
            score = 1;
        }
    }
    
    return score;
}

@end
