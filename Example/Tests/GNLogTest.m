//
//  GNLogTest.m
//  GNLog
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <XCTest/XCTest.h>

#import <GNLog/GNLog.h>

#define DEFAULT_PRINT_PARAMTER @"default_print_parameter"
#define DEFAULT_PRINT_TEXT     @"default_print_text:%@"
#define DEFAULT_TAG            @"defualt_tag"
#define DEFAULT_WRITE_TEXT     @"default_write_text"



@interface GNLogTest : XCTestCase

@end


@implementation GNLogTest

/**
 * correct flow
 */
- (void)testLogWriteVerbose
{
    logWriteVerbose(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLogWriteDebug
{
    logWriteDebug(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLogWriteInfo
{
    logWriteInfo(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLogWriteWarn
{
    logWriteWarn(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLogWriteError
{
    logWriteError(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLOG_WRITE_VERBOSE
{
    LOG_WRITE_VERBOSE(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLOG_WRITE_DEBUG
{
    LOG_WRITE_DEBUG(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLOG_WRITE_INFO
{
    LOG_WRITE_INFO(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLOG_WRITE_WARN
{
    LOG_WRITE_WARN(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLOG_WRITE_ERROR
{
    LOG_WRITE_ERROR(DEFAULT_TAG, DEFAULT_WRITE_TEXT);
}


/**
 * correct flow
 */
- (void)testLOG_PRINT_VERBOSE
{
    LOG_PRINT_VERBOSE(DEFAULT_TAG, DEFAULT_PRINT_TEXT, DEFAULT_PRINT_PARAMTER);
}


/**
 * correct flow
 */
- (void)testLOG_PRINT_DEBUG
{
    LOG_PRINT_DEBUG(DEFAULT_TAG, DEFAULT_PRINT_TEXT, DEFAULT_PRINT_PARAMTER);
}


/**
 * correct flow
 */
- (void)testLOG_PRINT_INFO
{
    LOG_PRINT_INFO(DEFAULT_TAG, DEFAULT_PRINT_TEXT, DEFAULT_PRINT_PARAMTER);
}


/**
 * correct flow
 */
- (void)testLOG_PRINT_WARN
{
    LOG_PRINT_WARN(DEFAULT_TAG, DEFAULT_PRINT_TEXT, DEFAULT_PRINT_PARAMTER);
}


/**
 * correct flow
 */
- (void)testLOG_PRINT_ERROR
{
    LOG_PRINT_ERROR(DEFAULT_TAG, DEFAULT_PRINT_TEXT, DEFAULT_PRINT_PARAMTER);
}

@end
