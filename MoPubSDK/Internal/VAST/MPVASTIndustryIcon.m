//
//  MPVASTIndustryIcon.m
//
//  Copyright 2018-2019 Twitter, Inc.
//  Licensed under the MoPub SDK License Agreement
//  http://www.mopub.com/legal/sdk-license-agreement/
//

#import "MPVASTIndustryIcon.h"
#import "MPVASTDurationOffset.h"
#import "MPVASTResource.h"
#import "MPVASTStringUtilities.h"

@implementation MPVASTIndustryIcon

+ (NSDictionary *)modelMap
{
    return @{@"program":            @"program",
             @"height":             @[@"height", MPParseNumberFromString(NSNumberFormatterDecimalStyle)],
             @"width":              @[@"width", MPParseNumberFromString(NSNumberFormatterDecimalStyle)],
             @"xPosition":          @"xPosition",
             @"yPosition":          @"yPosition",
             @"clickThroughURL":    @[@"IconClicks.IconClickThrough.text", MPParseURLFromString()],
             @"clickTrackingURLs":  @[@"IconClicks.IconClickTracking.text", MPParseArrayOf(MPParseURLFromString())],
             @"viewTrackingURLs":   @[@"IconViewTracking.text", MPParseArrayOf(MPParseURLFromString())],
             @"apiFramework":       @"apiFramework",
             @"duration":           @[@"duration", MPParseTimeIntervalFromDurationString()],
             @"offset":             @[@"@self", MPParseClass([MPVASTDurationOffset class])],
             @"HTMLResource":       @[@"HTMLResource", MPParseArrayOf(MPParseClass([MPVASTResource class]))],
             @"iframeResource":     @[@"IFrameResource", MPParseArrayOf(MPParseClass([MPVASTResource class]))],
             @"staticResource":     @[@"StaticResource", MPParseArrayOf(MPParseClass([MPVASTResource class]))]};

}

@end
