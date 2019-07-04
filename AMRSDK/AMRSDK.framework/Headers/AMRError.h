//
//  AMRError.h
//  AMRSDK
//
//  Created by Tolga Seremet on 23/08/16.
//  Copyright © 2016 Tolga Seremet. All rights reserved.
//

#import <Foundation/Foundation.h>

// Code: 500 - No server response.
// Code: 501 - AMRSDK could not initialized!
// Code: -1 - All placements returned no fill or timeouted!.
// Code: -1 - Server returned status code.
// Code: -2 - No internet connection.
// Code: 1077 - Waterfall result returned -1 for zone.
// Code: 1078 - Frequency capping is filled for zone.
// Code: 1079 - No Internet Connection.
// Code: 1080 - No placements found for zone.
// Code: 1081 - Tag disabled for zone.
// Code: 1082 - NoAd Ad policy defined for zone.
// Code: 1083 - NoAd Ad policy defined for tag.
// Code: 1084 - Frequency capping full for tag.
// Code: 1085 - Ad is not ready to show.
// Code: 1086 - Invalid zoneId.
// Code: 1087 - Invalid appId.
// Code: 1088 - AppId and zoneId does not match.

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
+ (instancetype)errorWithCode:(NSInteger)code detail:(NSString *)detail;
@end
