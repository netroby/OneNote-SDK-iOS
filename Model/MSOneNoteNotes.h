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


#ifndef MSONENOTENOTES_H
#define MSONENOTENOTES_H

#import <Foundation/Foundation.h>
#import "core/MSOrcChangesTrackingArray.h"

@class MSOneNoteNotebook;
@class MSOneNoteSection;
@class MSOneNoteSectionGroup;
@class MSOneNotePage;
@class MSOneNoteResource;
@class MSOneNoteOperation;
#import "core/MSOrcBaseEntity.h"
#import "api/MSOrcInteroperableWithDictionary.h"

/** Interface MSOneNoteNotes
 *
 */
@interface MSOneNoteNotes : MSOrcBaseEntity <MSOrcInteroperableWithDictionary>

/** Property _id
 *
 */
@property (nonatomic,  copy, setter=setId:, getter=_id) NSString * _id;

/** Property notebooks
 *
 */
@property (nonatomic,  copy, setter=setNotebooks:, getter=notebooks) NSMutableArray * notebooks;

/** Property sections
 *
 */
@property (nonatomic,  copy, setter=setSections:, getter=sections) NSMutableArray * sections;

/** Property sectionGroups
 *
 */
@property (nonatomic,  copy, setter=setSectionGroups:, getter=sectionGroups) NSMutableArray * sectionGroups;

/** Property pages
 *
 */
@property (nonatomic,  copy, setter=setPages:, getter=pages) NSMutableArray * pages;

/** Property resources
 *
 */
@property (nonatomic,  copy, setter=setResources:, getter=resources) NSMutableArray * resources;

/** Property _operations
 *
 */
@property (nonatomic,  copy, setter=setOperations:, getter=_operations) NSMutableArray * _operations;


+ (NSDictionary *) $$$_$$$propertiesNamesMappings;


@end

#endif
