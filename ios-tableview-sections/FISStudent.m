//
//  FISStudent.m
//  ios-tableview-sections
//
//  Created by Bettina on 6/26/16.
//  Copyright © 2016 The Flatiron School. All rights reserved.
//

#import "FISStudent.h"

@implementation FISStudent


-(instancetype)init{
    return [self initWithName:@"" favoriteThings:@[]];

}

-(instancetype)initWithName:(NSString *)name favoriteThings:(NSArray *)favoriteThings{

    self =[super init];
    
    if(self) {
    
        _name = name;
        _favoriteThings = favoriteThings;
    }

    return self;

}


@end
