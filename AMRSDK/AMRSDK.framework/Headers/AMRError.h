//
//  AMRError.h
//  AMRSDK
//
//  Created by Tolga Seremet on 23/08/16.
//  Copyright © 2016 Tolga Seremet. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface AMRError : NSObject
/**
 * Error code.
 * @see https://admost.github.io/amrios for more information.
 */
@property NSInteger errorCode;
/**
 * Description of error.
 */
@property NSString *errorDescription;
+ (instancetype)errorWithError:(NSError *)error;
@end
