//
//  CardMatchingGame.h
//  Machismo
//
//  Created by Jep Xia on 2017/1/27.
//  Copyright © 2017年 Jep Xia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Deck.h"

@interface CardMatchingGame : NSObject

//designed initializer
- (instancetype)initWithCardCount:(NSInteger)count usingDeck:(Deck *)deck;

- (void)chooseCardAtIndex:(NSInteger) index;
- (Card *)cardAtIndex:(NSInteger)index;

@property (nonatomic, readonly) NSInteger score;

@end
