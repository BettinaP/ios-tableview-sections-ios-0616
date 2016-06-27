//
//  FISStudent.h
//  ios-tableview-sections
//
//  Created by Bettina on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface FISStudent : NSObject

@property (strong, nonatomic) NSArray *favoriteThings;
@property (strong, nonatomic) NSString *name;



-(instancetype)init;


-(instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings;

@end
