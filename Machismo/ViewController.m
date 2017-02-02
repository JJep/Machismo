//
//  ViewController.m
//  Machismo
//
//  Created by Jep Xia on 16/5/27.
//  Copyright © 2016年 Jep Xia. All rights reserved.
//

#import "ViewController.h"
#import "PlayingCardDeck.h"
#import "CardMatchingGame.h"
@interface ViewController ()
@property (strong, nonatomic) IBOutletCollection(UIButton) NSArray *cardButton;
@property (strong, nonatomic) CardMatchingGame *game;
@property (nonatomic, strong) Deck *deck;
@end

@implementation ViewController

-(CardMatchingGame *)game
{
    if (!_game) {
        _game = [[CardMatchingGame alloc] initWithCardCount: [self.cardButton count]
                                                  usingDeck: [self createDeck]];
    }
    return _game;
}

-(Deck *)deck
{
    if (!_deck) {
        return [self createDeck];
    }
    return _deck;
}

-(Deck *)createDeck
{
    return [[PlayingCardDeck alloc] init];
}

- (IBAction)touchCardButton:(UIButton *)sender
{
    NSUInteger cardIndex = [self.cardButton indexOfObject:sender];
    [self.game chooseCardAtIndex:cardIndex];
    [self updateUI];
    
}

-(void) updateUI
{
    for (UIButton *cardButton in self.cardButton) {
        NSUInteger cardIndex = [self.cardButton indexOfObject:cardButton];
        Card *card = [self.game cardAtIndex:cardIndex];
        [cardButton setTitle:[self titleForCard:card]
                    forState:UIControlStateNormal];
        [cardButton setBackgroundImage:[self backgroundImageForCard:card]
                              forState:UIControlStateNormal];
        cardButton.enabled = !card.matched;
    }
}

-(NSString *) titleForCard:(Card *)card
{
    return card.isChosen ? card.contents : @"";
}

-(UIImage *) backgroundImageForCard:(Card *)card
{
    return  [UIImage imageNamed:card.isChosen ? @"front" : @"back"];
}

@end
