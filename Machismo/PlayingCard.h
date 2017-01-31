//
//  PlayingCard.h
//  Machismo
//
//  Created by Jep Xia on 2017/1/25.
//  Copyright © 2017年 Jep Xia. All rights reserved.
//

#import "Card.h"

@interface PlayingCard : Card
@property (strong, nonatomic) NSString *suit;
@property (nonatomic) NSUInteger rank;

+ (NSArray *)validSuits;
+ (NSUInteger)maxRank;
@end
