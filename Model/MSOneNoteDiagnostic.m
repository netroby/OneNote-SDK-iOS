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



#import "MSOneNoteModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOneNoteDiagnostic
 *
 */
@implementation MSOneNoteDiagnostic


@synthesize odataType = _odataType;

+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 

        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"message", @"message", @"url", @"url", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}


- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.Diagnostic";

    }

	return self;
}


- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_message = (![dic objectForKey: @"message"] || [ [dic objectForKey: @"message"] isKindOfClass:[NSNull class]] )?_message:[[dic objectForKey: @"message"] copy];
		_url = (![dic objectForKey: @"url"] || [ [dic objectForKey: @"url"] isKindOfClass:[NSNull class]] )?_url:[[dic objectForKey: @"url"] copy];
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = [self.message copy];if (curVal!=nil) [dic setValue: curVal forKey: @"message"];}
	{id curVal = [self.url copy];if (curVal!=nil) [dic setValue: curVal forKey: @"url"];}
    [dic setValue: @"#Microsoft.OneNote.Api.Diagnostic" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{id curVal = self.message;
    if([self.updatedValues containsObject:@"message"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"message"];
            }
    }
	{id curVal = self.url;
    if([self.updatedValues containsObject:@"url"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"url"];
            }
    }
    return dic;
}


/** Setter implementation for property message
 *
 */
- (void) setMessage: (NSString *) value {
    _message = value;
    [self valueChangedFor:@"message"];
}
       
/** Setter implementation for property url
 *
 */
- (void) setUrl: (NSString *) value {
    _url = value;
    [self valueChangedFor:@"url"];
}
       

@end
