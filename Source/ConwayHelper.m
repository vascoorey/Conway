//
//  ConwayHelper.m
//  ConwaysGameOfLife
//
//  Created by Vasco d'Orey on 06/05/14.
//  Copyright (c) 2014 Delta Dog. All rights reserved.
//

#import "ConwayHelper.h"

DOGConwaySize DOGConwaySizeMake(unsigned int rows, unsigned int columns) {
  DOGConwaySize size;
  size.rows = rows;
  size.columns = columns;
  return size;
}

DOGConwaySize DOGConwaySizeZero() {
  return DOGConwaySizeMake(0, 0);
}

DOGConwayPoint DOGConwayPointMake(unsigned int row, unsigned int column) {
  DOGConwayPoint point;
  point.row = row;
  point.column = column;
  return point;
}

DOGConwayPoint DOGConwayPointZero() {
  return DOGConwayPointMake(0, 0);
}

NSString *NSStringFromDOGConwayCellState(DOGConwayCellState state) {
  switch (state) {
    case DOGConwayCellStateAlive:
      return @"DOGConwayCellStateAlive";
      break;
    case DOGConwayCellStateDead:
      return @"DOGConwayCellStateDead";
      break;
    default:
      return @"DOGConwayCellStateInvalid";
      break;
  }
}
