//
//  GNLog.m
//  GNLog
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <GNLog/GNLog.h>



void logWriteVerbose(const NSString* const tag, const NSString* const text)
{
    LOG_WRITE_VERBOSE(tag, text);
}


void logWriteDebug(const NSString* const tag, const NSString* const text)
{
    LOG_WRITE_DEBUG(tag, text);
}


void logWriteInfo(const NSString* const tag, const NSString* const text)
{
    LOG_WRITE_INFO(tag, text);
}


void logWriteWarn(const NSString* const tag, const NSString* const text)
{
    LOG_WRITE_WARN(tag, text);
}


void logWriteError(const NSString* const tag, const NSString* const text)
{
    LOG_WRITE_ERROR(tag, text);
}


#ifdef DEBUG

const NSString* const kObjCLogLevelVerbose = @"V";
const NSString* const kObjCLogLevelDebug = @"D";

#endif // DEBUG

const NSString* const kObjCLogLevelInfo = @"I";
const NSString* const kObjCLogLevelWarn = @"W";
const NSString* const kObjCLogLevelError = @"E";
