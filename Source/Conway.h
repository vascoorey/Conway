//
//  Conway.h
//  ConwaysGameOfLife
//
//  Created by Vasco d'Orey on 06/05/14.
//  Copyright (c) 2014 Delta Dog. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ConwayHelper.h"

@protocol ConwayDelegate;

@interface Conway : NSObject

+ (instancetype)gameOfLife;

+ (instancetype)gameOfLifeWithSize:(DOGConwaySize)size;

@property (nonatomic, readonly) DOGConwaySize size;

/*!
 @abstract Whether or not the current grid onyl has dead cells
 */
@property (nonatomic, readonly, getter = isEmpty) BOOL empty;

@property (nonatomic, weak) id <ConwayDelegate> delegate;

- (void)tick;

- (DOGConwayCellState)cellStateForPoint:(DOGConwayPoint)point;

- (void)flipCellAtPoint:(DOGConwayPoint)point;

@end

@protocol ConwayDelegate <NSObject>

- (void)gameOfLife:(Conway *)gameOfLife cellDidDieAtPoint:(DOGConwayPoint)point;

- (void)gameOfLife:(Conway *)gameOfLife cellDidGenerateAtPoint:(DOGConwayPoint)point;

@end
