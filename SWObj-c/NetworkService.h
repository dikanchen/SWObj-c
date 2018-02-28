//
//  NSObject+NetworkService.h
//  SWObj-c
//
//  Created by User on 2/27/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SWcharacters.h"

@interface NetworkService : NSObject

+(void) getPokemonWithNumber:(int) number completion:(void(^_Nullable)(NSError* _Nullable, SWcharacters* _Nullable)) callback;

@end
