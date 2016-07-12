//
//  GNLog.h
//  GNLog
//
//  Created by Games Neox - 2016
//  Copyright © 2016 Games Neox. All rights reserved.
//

#import <Foundation/Foundation.h>



void logWriteVerbose(NSString* tag, NSString* text);
void logWriteDebug(NSString* tag, NSString* text);
void logWriteInfo(NSString* tag, NSString* text);
void logWriteWarn(NSString* tag, NSString* text);
void logWriteError(NSString* tag, NSString* text);


#ifdef DEBUG
#define OBJC_INTERNAL_LOG_PRINT(LEVEL,TAG,TEXT,...) { \
                                                        NSString* formattedText = [[NSString alloc] \
                                                                initWithFormat:(TEXT), __VA_ARGS__]; \
                                                        NSLog(@"[%@][%@][%@] %@: %@", (LEVEL), \
                                                                [[NSProcessInfo processInfo] processName], \
                                                                [NSThread currentThread], (TAG), formattedText); \
                                                    }
#define OBJC_INTERNAL_LOG_WRITE(LEVEL,TAG,TEXT)     { \
                                                        NSLog(@"[%@][%@][%@] %@: %@", (LEVEL), \
                                                                [[NSProcessInfo processInfo] processName], \
                                                        [NSThread currentThread], (TAG), (TEXT)); \
                                                    }
#else // DEBUG
#define OBJC_INTERNAL_LOG_PRINT(LEVEL,TAG,TEXT,...) { \
                                                        NSString* formattedText = [[NSString alloc] \
                                                                initWithFormat:(TEXT), __VA_ARGS__]; \
                                                        NSLog(@"[%@] %@: %@", (LEVEL), (TAG), formattedText); \
                                                    }
#define OBJC_INTERNAL_LOG_WRITE(LEVEL,TAG,TEXT)     { \
                                                        NSLog(@"[%@] %@: %@", (LEVEL), (TAG), (TEXT)); \
                                                    }
#endif // DEBUG

extern NSString* kObjCLogLevelInfo;
extern NSString* kObjCLogLevelWarn;
extern NSString* kObjCLogLevelError;

#ifdef DEBUG

extern NSString* kObjCLogLevelVerbose;
extern NSString* kObjCLogLevelDebug;

#define LOG_PRINT_VERBOSE(TAG,TEXT,...)             OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelVerbose, TAG, TEXT, __VA_ARGS__)
#define LOG_PRINT_DEBUG(TAG,TEXT,...)               OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelDebug, TAG, TEXT, __VA_ARGS__)
#define LOG_PRINT_INFO(TAG,TEXT,...)                OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelInfo, TAG, TEXT, __VA_ARGS__)
#define LOG_PRINT_WARN(TAG,TEXT,...)                OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelWarn, TAG, TEXT, __VA_ARGS__)
#define LOG_PRINT_ERROR(TAG,TEXT,...)               OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelError, TAG, TEXT, __VA_ARGS__)

#define LOG_WRITE_VERBOSE(TAG,TEXT)                 OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelVerbose, TAG, TEXT)
#define LOG_WRITE_DEBUG(TAG,TEXT)                   OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelDebug, TAG, TEXT)
#define LOG_WRITE_INFO(TAG,TEXT)                    OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelInfo, TAG, TEXT)
#define LOG_WRITE_WARN(TAG,TEXT)                    OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelWarn, TAG, TEXT)
#define LOG_WRITE_ERROR(TAG,TEXT)                   OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelError, TAG, TEXT)

#else // DEBUG

#define LOG_PRINT_VERBOSE(TAG,TEXT,...)             { (void) (TAG); (void) (TEXT); }
#define LOG_PRINT_DEBUG(TAG,TEXT,...)               { (void) (TAG); (void) (TEXT); }
#define LOG_PRINT_INFO(TAG,TEXT,...)                OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelInfo, TAG, TEXT, __VA_ARGS__)
#define LOG_PRINT_WARN(TAG,TEXT,...)                OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelWarn, TAG, TEXT, __VA_ARGS__)
#define LOG_PRINT_ERROR(TAG,TEXT,...)               OBJC_INTERNAL_LOG_PRINT( \
                                                            kObjCLogLevelError, TAG, TEXT, __VA_ARGS__)

#define LOG_WRITE_VERBOSE(TAG,TEXT)                 { (void) (TAG); (void) (TEXT); }
#define LOG_WRITE_DEBUG(TAG,TEXT)                   { (void) (TAG); (void) (TEXT); }
#define LOG_WRITE_INFO(TAG,TEXT)                    OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelInfo, TAG, TEXT)
#define LOG_WRITE_WARN(TAG,TEXT)                    OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelWarn, TAG, TEXT)
#define LOG_WRITE_ERROR(TAG,TEXT)                   OBJC_INTERNAL_LOG_WRITE(kObjCLogLevelError, TAG, TEXT)

#endif // DEBUG
