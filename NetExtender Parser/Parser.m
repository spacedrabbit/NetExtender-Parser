//
//  Parser.m
//  NetExtender Parser
//
//  Created by Louis Tur on 5/7/14.
//  Copyright (c) 2014 org.SuccessAcademies. All rights reserved.
//

#import "Parser.h"

@implementation Parser

- (instancetype)initParserWithFileURL:(NSURL *)file {
    
    if (self = [super init]) {
        _fileManager = [NSFileManager defaultManager];
        _fileToParse = file;
    }
    
    return self;
}


-(id)init {
    return [self initParserWithFileURL:nil];
}

@end
