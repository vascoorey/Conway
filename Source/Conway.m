//
//  Conway.m
//  ConwaysGameOfLife
//
//  Created by Vasco d'Orey on 06/05/14.
//  Copyright (c) 2014 Delta Dog. All rights reserved.
//

#import "Conway.h"

@interface Conway ()

- (id)initWithGridSize:(DOGConwaySize)size;

@property (nonatomic, readwrite) DOGConwaySize size;
@property (nonatomic, readwrite, getter = isEmpty) BOOL empty;

@end

@implementation Conway

#pragma mark - Factory Methods

+ (id)gameOfLife {
  return [[self alloc] init];
}

+ (id)gameOfLifeWithSize:(DOGConwaySize)size {
  return [[self alloc] initWithGridSize:size];
}

#pragma mark - Lifecycle

- (id)init {
  self = [super init];
  if(!self) return nil;
  
  _size = DOGConwaySizeZero();
  _empty = YES;
  
  return self;
}

- (id)initWithGridSize:(DOGConwaySize)size {
  self = [super init];
  if(!self) return nil;
  
  _size = size;
  _empty = YES;
  
  return self;
}

#pragma mark - Conway's Game of Life

- (void)tick {
  
}

@end
