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

- (IBAction)browseButton:(NSButton *)sender;


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
    
    NSURL * path = [panel URL];
    
    //self.filePathText textDidChange:<#(NSNotification *)#>
    
}
@end
