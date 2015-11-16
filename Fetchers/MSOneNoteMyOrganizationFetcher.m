/*******************************************************************************
**NOTE** This code was generated by a tool and will occasionally be
overwritten. We welcome comments and issues regarding this code; they will be
addressed in the generation tool. If you wish to submit pull requests, please
do so for the templates in that tool.

This code was generated by Vipr (https://github.com/microsoft/vipr) using
the T4TemplateWriter (https://github.com/msopentech/vipr-t4templatewriter).

Copyright (c) Microsoft Open Technologies, Inc. All Rights Reserved.
Licensed under the Apache License 2.0; see LICENSE in the source repository
root for authoritative license information.﻿
******************************************************************************/


#import "MSOneNoteFetchers.h"
#import "core/core.h"

@implementation MSOneNoteMyOrganizationFetcher

@synthesize operations = _operations;

- (instancetype)initWithUrl:(NSString *)urlComponent parent:(id<MSOrcExecutable>)parent {

    if (self = [super initWithUrl:urlComponent parent:parent asClass:[MSOneNoteMyOrganization class]]) {

		_operations = [[MSOneNoteMyOrganizationOperations alloc] initOperationWithUrl:urlComponent parent:parent];
    }

    return self;
}

- (void)update:(id)entity callback:(void (^)(MSOneNoteMyOrganization *MyOrganization, MSOrcError *e))callback {

	return [super update:entity callback:callback];
}

- (void)delete:(void (^)(int status, MSOrcError *e))callback {

	return [super deleteWithCallback:callback];
}

- (MSOneNoteMyOrganizationFetcher *)addCustomParametersWithName:(NSString *)name value:(id)value {
    [super addCustomParametersWithName:name value:value];
    
    return self;
}

- (MSOneNoteMyOrganizationFetcher *)addCustomHeaderWithName:(NSString *)name value:(NSString *)value {
    [super addCustomHeaderWithName:name value:value];
    
    return self;
}

- (MSOneNoteMyOrganizationFetcher *)select:(NSString *)params {
    [super select:params];
    
    return self;
}

- (MSOneNoteMyOrganizationFetcher *)expand:(NSString *)value {
    [super expand:value];
    
    return self;
}

- (void) readWithCallback:(void (^)(MSOneNoteMyOrganization *MyOrganization, MSOrcError *error))callback {
    [super readWithCallback:^(id response, MSOrcError *error) {
        callback(response, error);
    }];
}

- (MSOneNoteSiteCollection_CollectionFetcher *)siteCollections {

    return [[MSOneNoteSiteCollection_CollectionFetcher alloc] initWithUrl:@"siteCollections" parent:self asClass:[MSOneNoteSiteCollection class]];
}

- (MSOneNoteSiteCollection_Fetcher *)siteCollectionsById:(NSString *)identifier {

    return [[[MSOneNoteSiteCollection_CollectionFetcher alloc] initWithUrl:@"siteCollections" parent:self asClass:[MSOneNoteSiteCollection class]] getById:identifier];

}

- (MSOneNoteGroupCollectionFetcher *)groups {

    return [[MSOneNoteGroupCollectionFetcher alloc] initWithUrl:@"groups" parent:self asClass:[MSOneNoteGroup class]];
}

- (MSOneNoteGroupFetcher *)groupsById:(NSString *)identifier {

    return [[[MSOneNoteGroupCollectionFetcher alloc] initWithUrl:@"groups" parent:self asClass:[MSOneNoteGroup class]] getById:identifier];

}

@end
