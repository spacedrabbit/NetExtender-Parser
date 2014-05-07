//
//  Parser.h
//  NetExtender Parser
//
//  Created by Louis Tur on 5/7/14.
//  Copyright (c) 2014 org.SuccessAcademies. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Parser : NSObject

@property (strong, nonatomic) NSFileManager * fileManager;
@property (strong, nonatomic) NSURL * fileToParse;

-(instancetype) initParserWithFileURL: (NSURL *) file;

@end
