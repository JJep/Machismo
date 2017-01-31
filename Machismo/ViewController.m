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

    if ([sender.currentTitle length]){
        [sender setBackgroundImage:[UIImage imageNamed:@"back"] forState:UIControlStateNormal];
        [sender setTitle:@"" forState:UIControlStateNormal];
    } else {
        Card *card = [self.deck drawRandomCard];
        if (card) {
            [sender setBackgroundImage:[UIImage imageNamed:@"front"] forState:UIControlStateNormal];
            [sender setTitle:card.contents forState:UIControlStateNormal];
        }
    }
    self.flipCount++;
    
}

@end
