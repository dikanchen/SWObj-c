//
//  ViewController.h
//  SWObj-c
//
//  Created by User on 2/27/18.
//  Copyright © 2018 dikan.chen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UITextField *numberText;
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *heightLabel;
@property (weak, nonatomic) IBOutlet UILabel *massLabel;
@property (weak, nonatomic) IBOutlet UILabel *hairLabel;
@property (weak, nonatomic) IBOutlet UILabel *skinLabel;
@property (weak, nonatomic) IBOutlet UILabel *eyeLabel;
@property (weak, nonatomic) IBOutlet UILabel *birthLabel;
@property (weak, nonatomic) IBOutlet UILabel *genderLabel;

- (IBAction)confirmbtn:(id)sender;

@end

