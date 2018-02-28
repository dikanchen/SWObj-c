//
//  NSObject+SWcharacters.m
//  SWObj-c
//
//  Created by User on 2/27/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

#import "SWcharacters.h"

@implementation SWcharacters
@synthesize name, height, mass, hair, skin, eye, birth, gender;

-(SWcharacters *)initWithDictionary:(NSDictionary *) dictionary{
    self = [super init];
    self.name = [dictionary objectForKey:@"name"];
    self.height = [dictionary objectForKey:@"height"];
    self.mass = [dictionary objectForKey:@"mass"];
    self.hair = [dictionary objectForKey:@"hair_color"];
    self.skin = [dictionary objectForKey:@"skin_color"];
    self.eye = [dictionary objectForKey:@"eye_color"];
    self.birth = [dictionary objectForKey:@"birth_year"];
    self.gender = [dictionary objectForKey:@"gender"];
    
    return self;
}

@end
