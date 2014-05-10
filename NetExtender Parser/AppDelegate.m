//
//  AppDelegate.m
//  NetExtender Parser
//
//  Created by Louis Tur on 5/7/14.
//  Copyright (c) 2014 org.SuccessAcademies. All rights reserved.
//

#import "AppDelegate.h"
#import "Parser.h"

@interface AppDelegate () <NSTextFieldDelegate>

@property (weak, nonatomic) IBOutlet NSButton * browseButton;
@property (weak, nonatomic) IBOutlet NSTextField * filePathText;
@property (strong, nonatomic) NSURL * filePath;
@property (weak, nonatomic) NSScrollView * dataView;
@property (unsafe_unretained) IBOutlet NSTextView *dataTextView;

- (IBAction)browseButton:(NSButton *)sender;
- (void)loadDataView;

@end

@implementation AppDelegate{
    Parser * parser;
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    [self.filePathText setDelegate:self];
}

- (IBAction)browseButton:(NSButton *)sender {
    
    NSOpenPanel * panel = [NSOpenPanel openPanel];
    
    [panel setCanChooseDirectories:YES];
    [panel setCanChooseFiles:YES];
    
    [panel beginWithCompletionHandler:^(NSInteger result){
        
        if(result == NSFileHandlingPanelOKButton){
            
            self.filePath = [panel URL];
            
            [self.filePathText setStringValue:[NSString stringWithFormat:@"%@",[self.filePath path]]];
            
            [self loadDataView];
            
        }
        else{
            NSLog(@"Guess you really didn't want that file, jerk");
        }
    }];

}

-(void)loadDataView{
    NSString * data = [NSString stringWithContentsOfURL:self.filePath encoding:NSUTF8StringEncoding error:nil];
    
    [self.dataTextView setString:data];
}

@end
