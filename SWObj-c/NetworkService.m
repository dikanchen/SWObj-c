//
//  NSObject+NetworkService.m
//  SWObj-c
//
//  Created by User on 2/27/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

#import "NetworkService.h"
@interface NetworkService()
+(NSString *)pokeUrl;
@end
@implementation NetworkService

+(NSString *)pokeUrl{
    return @"https://swapi.co/api/people/";
}

+(void) getPokemonWithNumber:(int) number completion:(void(^_Nullable)(NSError* _Nullable, SWcharacters* _Nullable)) callback{
    NSString * stringUrl = [NSString stringWithFormat:@"%@%d",[self pokeUrl], number];
    NSURL * _Nullable url = [[NSURL alloc]initWithString:stringUrl];
    if (url == Nil){return;}
    NSURLSession * session = [NSURLSession sharedSession];
    [[session dataTaskWithURL:url completionHandler:^(NSData * _Nullable data, NSURLResponse * _Nullable response, NSError * _Nullable error){
        if(error != Nil){
            callback(error,Nil);
        }
        if(data != Nil){
            NSError * _Nullable error = nil;
            id objects = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
            if ([objects isKindOfClass:[NSDictionary class]]){
                SWcharacters * characters = [[SWcharacters alloc] initWithDictionary:objects];
                callback(Nil, characters);
            }else if (error != nil){
                callback(error,Nil);
            }else{
                callback(Nil, Nil);
            }
        }
    }] resume];
}

@end
