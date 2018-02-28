//
//  ViewController.m
//  SWObj-c
//
//  Created by User on 2/27/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

#import "ViewController.h"
#import "NetworkService.h"

@interface ViewController ()

@end

@implementation ViewController

@synthesize numberText, nameLabel, heightLabel, massLabel, hairLabel, skinLabel, eyeLabel, birthLabel, genderLabel;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)confirmbtn:(id)sender {
    NSString * _Nullable string = numberText.text;
    if (string == Nil){return;}
    int number1 = [string intValue];
    if (number1 > 16){
        number1 += 1;
    }
    [NetworkService getPokemonWithNumber:number1 completion:^(NSError * _Nullable error, SWcharacters * _Nullable characters) {
        if (error != Nil) {
            NSLog(@"%@", error.localizedDescription);
        }
        if (characters != nil) {
            dispatch_async(dispatch_get_main_queue(), ^{
                nameLabel.text = [characters name];
                heightLabel.text = [characters height];
                massLabel.text = [characters mass];
                hairLabel.text = [characters hair];
                skinLabel.text = [characters skin];
                eyeLabel.text = [characters eye];
                birthLabel.text = [characters birth];
                genderLabel.text = [characters gender];
            });
        }
    }];
}
@end
