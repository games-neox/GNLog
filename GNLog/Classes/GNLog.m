//
//  GNLog.m
//  GNLog
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import "GNLog.h"



void logWriteVerbose(NSString* tag, NSString* text)
{
    LOG_WRITE_VERBOSE(tag, text);
}


void logWriteDebug(NSString* tag, NSString* text)
{
    LOG_WRITE_DEBUG(tag, text);
}


void logWriteInfo(NSString* tag, NSString* text)
{
    LOG_WRITE_INFO(tag, text);
}


void logWriteWarn(NSString* tag, NSString* text)
{
    LOG_WRITE_WARN(tag, text);
}


void logWriteError(NSString* tag, NSString* text)
{
    LOG_WRITE_ERROR(tag, text);
}


#ifdef DEBUG

NSString* kObjCLogLevelVerbose = @"V";
NSString* kObjCLogLevelDebug = @"D";

#endif // DEBUG

NSString* kObjCLogLevelInfo = @"I";
NSString* kObjCLogLevelWarn = @"W";
NSString* kObjCLogLevelError = @"E";
