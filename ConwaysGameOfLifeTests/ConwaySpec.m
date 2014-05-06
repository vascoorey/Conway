//
//  ConwaySpec.m
//  ConwaysGameOfLife
//
//  Created by Vasco d'Orey on 06/05/14.
//  Copyright (c) 2014 Delta Dog. All rights reserved.
//

#import <Specta/Specta.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>

#import "Conway.h"

SpecBegin(Conway)

describe(@"It should adequately model conway's game of life", ^{
  it(@"Should create an empty game correctly", ^{
    expect([Conway gameOfLife].empty).to.beTruthy();
  });
  
  it(@"Should create a custom sized game correctly", ^{
    Conway *game = [Conway gameOfLifeWithSize:DOGConwaySizeMake(100, 50)];
    expect(game.isEmpty).to.beTruthy();
    expect(game.size.rows).to.equal(100);
    expect(game.size.columns).to.equal(50);
  });
  
  it(@"Should stay empty if it's empty", ^{
    Conway *game = [Conway gameOfLifeWithSize:DOGConwaySizeMake(50, 50)];
    [game tick];
    expect(game.isEmpty).to.beTruthy();
  });
});

SpecEnd
