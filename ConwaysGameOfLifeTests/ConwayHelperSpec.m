//
//  ConwayHelperSpec.m
//  ConwaysGameOfLife
//
//  Created by Vasco d'Orey on 06/05/14.
//  Copyright (c) 2014 Delta Dog. All rights reserved.
//

#import <Specta/Specta.h>
#define EXP_SHORTHAND
#import <Expecta/Expecta.h>

#import "ConwayHelper.h"

SpecBegin(ConwayHelper)

describe(@"DOGConwayPoint helpers should behave as expected", ^{
  // DOGConwayPoint
  DOGConwayPoint point = DOGConwayPointZero();
  expect(point.row).to.equal(0);
  expect(point.column).to.equal(0);
  point = DOGConwayPointMake(15, 5);
  expect(point.row).to.equal(15);
  expect(point.column).to.equal(5);
});

describe(@"DOGConwaySize helpers should behave as expected", ^{
  // DOGConwaySize
  DOGConwaySize size = DOGConwaySizeZero();
  expect(size.rows).to.equal(0);
  expect(size.columns).to.equal(0);
  size = DOGConwaySizeMake(100, 10);
  expect(size.rows).to.equal(100);
  expect(size.columns).to.equal(10);
});

describe(@"DOGConwayCellState helpers should behave as expected", ^{
  // DOGConwayCellState
  expect(NSStringFromDOGConwayCellState(DOGConwayCellStateInvalid)).to.equal("DOGConwayCellStateInvalid");
  expect(NSStringFromDOGConwayCellState(DOGConwayCellStateAlive)).to.equal("DOGConwayCellStateAlive");
  expect(NSStringFromDOGConwayCellState(DOGConwayCellStateDead)).to.equal("DOGConwayCellStateDead");
});

SpecEnd
