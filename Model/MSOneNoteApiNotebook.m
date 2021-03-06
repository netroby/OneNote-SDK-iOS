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



#import "MSOneNoteApiModels.h"
#import "core/MSOrcObjectizer.h"


/** Implementation for MSOneNoteApiNotebook
 *
 */
@implementation MSOneNoteApiNotebook


@synthesize odataType = _odataType;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings
{
    static NSDictionary *_$$$_$$$propertiesNamesMappings=nil; 
    
        if(_$$$_$$$propertiesNamesMappings==nil) {
    
        _$$$_$$$propertiesNamesMappings=[[NSDictionary alloc] initWithObjectsAndKeys:  @"isDefault", @"isDefault", @"userRole", @"userRole", @"isShared", @"isShared", @"sectionsUrl", @"sectionsUrl", @"sectionGroupsUrl", @"sectionGroupsUrl", @"links", @"links", @"name", @"name", @"createdBy", @"createdBy", @"createdByUser", @"createdByUser", @"lastModifiedBy", @"lastModifiedBy", @"lastModifiedByUser", @"lastModifiedByUser", @"lastModifiedTime", @"lastModifiedTime", @"id", @"_id", @"self", @"_self", @"createdTime", @"createdTime", @"sections", @"sections", @"sectionGroups", @"sectionGroups", nil];
        
    }
    
    return _$$$_$$$propertiesNamesMappings;
}

- (instancetype)init {

	if (self = [super init]) {

		_odataType = @"#Microsoft.OneNote.Api.Notebook";
        
    }

	return self;
}



- (instancetype) initWithDictionary: (NSDictionary *) dic {
    if((self = [self init])) {
        if(dic!=nil) {
		_isDefault = (![dic objectForKey: @"isDefault"] || [ [dic objectForKey: @"isDefault"] isKindOfClass:[NSNull class]] )?_isDefault:[[dic objectForKey: @"isDefault"] boolValue];
		_userRole = (![dic objectForKey: @"userRole"] || [ [dic objectForKey: @"userRole"] isKindOfClass:[NSNull class]] )?_userRole:[MSOneNoteApiUserRoleSerializer fromString:[dic objectForKey: @"userRole"]];
		_isShared = (![dic objectForKey: @"isShared"] || [ [dic objectForKey: @"isShared"] isKindOfClass:[NSNull class]] )?_isShared:[[dic objectForKey: @"isShared"] boolValue];
		_sectionsUrl = (![dic objectForKey: @"sectionsUrl"] || [ [dic objectForKey: @"sectionsUrl"] isKindOfClass:[NSNull class]] )?_sectionsUrl:[[dic objectForKey: @"sectionsUrl"] copy];
		_sectionGroupsUrl = (![dic objectForKey: @"sectionGroupsUrl"] || [ [dic objectForKey: @"sectionGroupsUrl"] isKindOfClass:[NSNull class]] )?_sectionGroupsUrl:[[dic objectForKey: @"sectionGroupsUrl"] copy];
		_links = (![dic objectForKey: @"links"] || [ [dic objectForKey: @"links"] isKindOfClass:[NSNull class]] )?_links:[[MSOneNoteApiNotebookLinks alloc] initWithDictionary: [dic objectForKey: @"links"]];
		_name = (![dic objectForKey: @"name"] || [ [dic objectForKey: @"name"] isKindOfClass:[NSNull class]] )?_name:[[dic objectForKey: @"name"] copy];
		_createdBy = (![dic objectForKey: @"createdBy"] || [ [dic objectForKey: @"createdBy"] isKindOfClass:[NSNull class]] )?_createdBy:[[dic objectForKey: @"createdBy"] copy];
		_createdByUser = (![dic objectForKey: @"createdByUser"] || [ [dic objectForKey: @"createdByUser"] isKindOfClass:[NSNull class]] )?_createdByUser:[[MSOneNoteApiIdentitySet alloc] initWithDictionary: [dic objectForKey: @"createdByUser"]];
		_lastModifiedBy = (![dic objectForKey: @"lastModifiedBy"] || [ [dic objectForKey: @"lastModifiedBy"] isKindOfClass:[NSNull class]] )?_lastModifiedBy:[[dic objectForKey: @"lastModifiedBy"] copy];
		_lastModifiedByUser = (![dic objectForKey: @"lastModifiedByUser"] || [ [dic objectForKey: @"lastModifiedByUser"] isKindOfClass:[NSNull class]] )?_lastModifiedByUser:[[MSOneNoteApiIdentitySet alloc] initWithDictionary: [dic objectForKey: @"lastModifiedByUser"]];
		_lastModifiedTime = (![dic objectForKey: @"lastModifiedTime"] || [ [dic objectForKey: @"lastModifiedTime"] isKindOfClass:[NSNull class]] )?_lastModifiedTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"lastModifiedTime"]];
		__id = (![dic objectForKey: @"id"] || [ [dic objectForKey: @"id"] isKindOfClass:[NSNull class]] )?__id:[[dic objectForKey: @"id"] copy];
		__self = (![dic objectForKey: @"self"] || [ [dic objectForKey: @"self"] isKindOfClass:[NSNull class]] )?__self:[[dic objectForKey: @"self"] copy];
		_createdTime = (![dic objectForKey: @"createdTime"] || [ [dic objectForKey: @"createdTime"] isKindOfClass:[NSNull class]] )?_createdTime:[MSOrcObjectizer dateFromString:[dic objectForKey: @"createdTime"]];

        if([dic objectForKey: @"sections"] != [NSNull null]){
            _sections = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"sections"]) {
                [_sections addObject:[[MSOneNoteApiSection alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_sections resetChangedFlag];
        }
        

        if([dic objectForKey: @"sectionGroups"] != [NSNull null]){
            _sectionGroups = [[MSOrcChangesTrackingArray alloc] init];
            
            for (id object in [dic objectForKey: @"sectionGroups"]) {
                [_sectionGroups addObject:[[MSOneNoteApiSectionGroup alloc] initWithDictionary: object]];
            }
            
            [(MSOrcChangesTrackingArray *)_sectionGroups resetChangedFlag];
        }
        
    }
    [self.updatedValues removeAllObjects];
    }
    
    return self;
}

- (NSDictionary *) toDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

	{[dic setValue: (self.isDefault?@"true":@"false") forKey: @"isDefault"];}
	{[dic setValue: [MSOneNoteApiUserRoleSerializer toString:self.userRole] forKey: @"userRole"];}
	{[dic setValue: (self.isShared?@"true":@"false") forKey: @"isShared"];}
	{id curVal = [self.sectionsUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"sectionsUrl"];}
	{id curVal = [self.sectionGroupsUrl copy];if (curVal!=nil) [dic setValue: curVal forKey: @"sectionGroupsUrl"];}
	{id curVal = [self.links toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"links"];}
	{id curVal = [self.name copy];if (curVal!=nil) [dic setValue: curVal forKey: @"name"];}
	{id curVal = [self.createdBy copy];if (curVal!=nil) [dic setValue: curVal forKey: @"createdBy"];}
	{id curVal = [self.createdByUser toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"createdByUser"];}
	{id curVal = [self.lastModifiedBy copy];if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedBy"];}
	{id curVal = [self.lastModifiedByUser toDictionary];if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedByUser"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.lastModifiedTime];if (curVal!=nil) [dic setValue: curVal forKey: @"lastModifiedTime"];}
	{id curVal = [self._id copy];if (curVal!=nil) [dic setValue: curVal forKey: @"id"];}
	{id curVal = [self._self copy];if (curVal!=nil) [dic setValue: curVal forKey: @"self"];}
	{id curVal = [MSOrcObjectizer stringFromDate:self.createdTime];if (curVal!=nil) [dic setValue: curVal forKey: @"createdTime"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.sections) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"sections"];}
	{    NSMutableArray *curVal = [[NSMutableArray alloc] init];
    
    for(id obj in self.sectionGroups) {
       [curVal addObject:[obj toDictionary]];
    }
    
    if([curVal count]==0) curVal=nil;
if (curVal!=nil) [dic setValue: curVal forKey: @"sectionGroups"];}
    [dic setValue: @"#Microsoft.OneNote.Api.Notebook" forKey: @"@odata.type"];

    return dic;
}

- (NSDictionary *) toUpdatedValuesDictionary {
    
    NSMutableDictionary *dic=[[NSMutableDictionary alloc] init];

 if([self.updatedValues containsObject:@"isDefault"])
            { [dic setValue: (self.isDefault?@"true":@"false") forKey: @"isDefault"];
} if([self.updatedValues containsObject:@"userRole"])
            { [dic setValue: [MSOneNoteApiUserRoleSerializer toString:self.userRole] forKey: @"userRole"];
} if([self.updatedValues containsObject:@"isShared"])
            { [dic setValue: (self.isShared?@"true":@"false") forKey: @"isShared"];
}	{id curVal = self.sectionsUrl;
    if([self.updatedValues containsObject:@"sectionsUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"sectionsUrl"];
            }
    }
	{id curVal = self.sectionGroupsUrl;
    if([self.updatedValues containsObject:@"sectionGroupsUrl"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"sectionGroupsUrl"];
            }
    }
	{id curVal = self.links;
    if([self.updatedValues containsObject:@"links"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"links"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"links"];
            }
        
            }}
	{id curVal = self.name;
    if([self.updatedValues containsObject:@"name"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"name"];
            }
    }
	{id curVal = self.createdBy;
    if([self.updatedValues containsObject:@"createdBy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"createdBy"];
            }
    }
	{id curVal = self.createdByUser;
    if([self.updatedValues containsObject:@"createdByUser"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"createdByUser"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"createdByUser"];
            }
        
            }}
	{id curVal = self.lastModifiedBy;
    if([self.updatedValues containsObject:@"lastModifiedBy"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"lastModifiedBy"];
            }
    }
	{id curVal = self.lastModifiedByUser;
    if([self.updatedValues containsObject:@"lastModifiedByUser"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal toDictionary] forKey: @"lastModifiedByUser"];
            }
        else
    {
                
        NSDictionary *updatedDic=[curVal toUpdatedValuesDictionary];
        
            if(updatedDic!=nil && [updatedDic count]>0)
            {
                [dic setValue: [curVal toDictionary] forKey: @"lastModifiedByUser"];
            }
        
            }}
	{id curVal = self.lastModifiedTime;
    if([self.updatedValues containsObject:@"lastModifiedTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"lastModifiedTime"];
            }
    }
	{id curVal = self._id;
    if([self.updatedValues containsObject:@"id"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"id"];
            }
    }
	{id curVal = self._self;
    if([self.updatedValues containsObject:@"self"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[curVal copy] forKey: @"self"];
            }
    }
	{id curVal = self.createdTime;
    if([self.updatedValues containsObject:@"createdTime"])
    {
                [dic setValue: curVal==nil?[NSNull null]:[MSOrcObjectizer stringFromDate:curVal] forKey: @"createdTime"];
            }
    }
	{id curVal = self.sections;
    if([self.updatedValues containsObject:@"sections"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"sections"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.sections) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"sections"];
        }
        
            }}
	{id curVal = self.sectionGroups;
    if([self.updatedValues containsObject:@"sectionGroups"])
    {
            NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in curVal) {
       [curArray addObject:[obj toDictionary]];
    }
    
            [dic setValue: curArray forKey: @"sectionGroups"];
            }
        else
    {
                
        if(![curVal isKindOfClass:[MSOrcChangesTrackingArray class]] || [(MSOrcChangesTrackingArray *)curVal hasChanged])
        {
                NSMutableArray *curArray = [[NSMutableArray alloc] init];
    
    for(id obj in self.sectionGroups) {
       [curArray addObject:[obj toDictionary]];
    }
    
                 [dic setValue: curArray forKey: @"sectionGroups"];
        }
        
            }}
    return dic;
}


/** Setter implementation for property isDefault
 *
 */
- (void) setIsDefault: (bool) value {
    _isDefault = value;
    [self valueChangedFor:@"isDefault"];
}
       
/** Setter implementation for property userRole
 *
 */
- (void) setUserRole: (MSOneNoteApiUserRole) value {
    _userRole = value;
    [self valueChangedFor:@"userRole"];
}
       

- (void)setUserRoleString:(NSString *)string {
        
    _userRole = [MSOneNoteApiUserRoleSerializer fromString:string];
    [self valueChangedFor:@"userRole"]; 
}

/** Setter implementation for property isShared
 *
 */
- (void) setIsShared: (bool) value {
    _isShared = value;
    [self valueChangedFor:@"isShared"];
}
       
/** Setter implementation for property sectionsUrl
 *
 */
- (void) setSectionsUrl: (NSString *) value {
    _sectionsUrl = value;
    [self valueChangedFor:@"sectionsUrl"];
}
       
/** Setter implementation for property sectionGroupsUrl
 *
 */
- (void) setSectionGroupsUrl: (NSString *) value {
    _sectionGroupsUrl = value;
    [self valueChangedFor:@"sectionGroupsUrl"];
}
       
/** Setter implementation for property links
 *
 */
- (void) setLinks: (MSOneNoteApiNotebookLinks *) value {
    _links = value;
    [self valueChangedFor:@"links"];
}
       
/** Setter implementation for property name
 *
 */
- (void) setName: (NSString *) value {
    _name = value;
    [self valueChangedFor:@"name"];
}
       
/** Setter implementation for property createdBy
 *
 */
- (void) setCreatedBy: (NSString *) value {
    _createdBy = value;
    [self valueChangedFor:@"createdBy"];
}
       
/** Setter implementation for property createdByUser
 *
 */
- (void) setCreatedByUser: (MSOneNoteApiIdentitySet *) value {
    _createdByUser = value;
    [self valueChangedFor:@"createdByUser"];
}
       
/** Setter implementation for property lastModifiedBy
 *
 */
- (void) setLastModifiedBy: (NSString *) value {
    _lastModifiedBy = value;
    [self valueChangedFor:@"lastModifiedBy"];
}
       
/** Setter implementation for property lastModifiedByUser
 *
 */
- (void) setLastModifiedByUser: (MSOneNoteApiIdentitySet *) value {
    _lastModifiedByUser = value;
    [self valueChangedFor:@"lastModifiedByUser"];
}
       
/** Setter implementation for property lastModifiedTime
 *
 */
- (void) setLastModifiedTime: (NSDate *) value {
    _lastModifiedTime = value;
    [self valueChangedFor:@"lastModifiedTime"];
}
       
/** Setter implementation for property _id
 *
 */
- (void) setId: (NSString *) value {
    __id = value;
    [self valueChangedFor:@"id"];
}
       
/** Setter implementation for property _self
 *
 */
- (void) setSelf: (NSString *) value {
    __self = value;
    [self valueChangedFor:@"self"];
}
       
/** Setter implementation for property createdTime
 *
 */
- (void) setCreatedTime: (NSDate *) value {
    _createdTime = value;
    [self valueChangedFor:@"createdTime"];
}
       
/** Setter implementation for property sections
 *
 */
- (void) setSections: (NSMutableArray *) value {
    _sections = value;
    [self valueChangedFor:@"sections"];
}
       
/** Setter implementation for property sectionGroups
 *
 */
- (void) setSectionGroups: (NSMutableArray *) value {
    _sectionGroups = value;
    [self valueChangedFor:@"sectionGroups"];
}
       

@end
