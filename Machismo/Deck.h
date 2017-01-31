//
//  Deck.h
//  Machismo
//
//  Created by Jep Xia on 2017/1/25.
//  Copyright © 2017年 Jep Xia. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Card.h"

@interface Deck : NSObject

- (void)addCard: (Card *)card atTop:(BOOL)atTop;
- (void)addCard:(Card *)card;

- (Card *)drawRandomCard;

@end
