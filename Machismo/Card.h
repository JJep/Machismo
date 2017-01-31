//
//  Card.h
//  Machismo
//
//  Created by Jep Xia on 2016/12/8.
//  Copyright © 2016年 Jep Xia. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Card : NSObject

@property (strong, nonatomic) NSString *contents;
@property (nonatomic, getter=isChosen) BOOL chosen;
@property (nonatomic, getter=isMatched) BOOL matched;
- (int)match:(NSArray *)otherCards;



@end
