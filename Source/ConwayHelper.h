//
//  ConwayHelper.h
//  ConwaysGameOfLife
//
//  Created by Vasco d'Orey on 06/05/14.
//  Copyright (c) 2014 Delta Dog. All rights reserved.
//

#import <Foundation/Foundation.h>

/*!
 @abstract \c DOGConwaySize describes the discrete size of the grid to model.
 */
typedef struct {
  /*!
   @abstract The number of rows.
   */
  unsigned int rows;
  /*!
   @abstract The number of columns.
   */
  unsigned int columns;
} DOGConwaySize;

DOGConwaySize DOGConwaySizeMake(unsigned int rows, unsigned int columns);
DOGConwaySize DOGConwaySizeZero();

/*!
 @abstract \c DOGConwayPoint describes a point in the grid.
 */
typedef struct {
  unsigned int row;
  unsigned int column;
} DOGConwayPoint;

DOGConwayPoint DOGConwayPointMake(unsigned int row, unsigned int column);
DOGConwayPoint DOGConwayPointZero();

typedef NS_ENUM(unsigned int, DOGConwayCellState) {
  DOGConwayCellStateInvalid,
  DOGConwayCellStateAlive,
  DOGConwayCellStateDead
};

NSString *NSStringFromDOGConwayCellState(DOGConwayCellState state);
