//
//  NSObject+SWcharacters.h
//  SWObj-c
//
//  Created by User on 2/27/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SWcharacters : NSObject

@property(nonatomic) int number;
@property(nonatomic, retain) NSString * name;
@property(nonatomic, retain) NSString * height;
@property(nonatomic, retain) NSString * mass;
@property(nonatomic, retain) NSString * hair;
@property(nonatomic, retain) NSString * skin;
@property(nonatomic, retain) NSString * eye;
@property(nonatomic, retain) NSString * birth;
@property(nonatomic, retain) NSString * gender;

-(SWcharacters *)initWithDictionary:(NSDictionary *) dictionary;

@end
