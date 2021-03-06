/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Corporation. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/



#import "MSOneNoteApiFetchers.h"

@implementation MSOneNoteApiUserCollectionFetcher

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    return [super initWithUrl:urlComponent parent:parent asClass:[MSOneNoteApiUser class]];
}

- (void)add:(MSOneNoteApiUser*)entity callback:(void (^)(MSOneNoteApiUser *mSOneNoteApiUser, MSOrcError *error))callback {
	
	return [super add:entity callback:^(id entityAdded, MSOrcError *e) {

        callback(entityAdded,e);
    }];
}

- (void)readWithCallback:(void (^)(NSArray *, MSOrcError *))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOneNoteApiUserFetcher *)getById:(id) identifier {

    return [[MSOneNoteApiUserFetcher alloc] initWithUrl:[[NSString alloc] initWithFormat:@"('%@')" , identifier] parent:self];
}

- (MSOneNoteApiUserCollectionFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)filter:(NSString *)params{
    [super filter:params];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)search:(NSString *)params {
    [super search:params];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)top:(int)value {
    [super top:value];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)skip:(int)value {
    [super skip:value];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)orderBy:(NSString *)params {
    [super orderBy:params];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOneNoteApiUserCollectionFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

@end
