//
//  RNInstagramShare.m
//  RNInstagramShare
//
//  Created by watzak on 09/11/15.
//  Copyright © 2015 watzak. All rights reserved.
//

#import "RNInstagramShare.h"

@implementation RNInstagramShare

// Expose this module to the React Native bridge
RCT_EXPORT_MODULE()


RCT_EXPORT_METHOD(share:(NSURL*)assetsLibraryURL
                  andMessage:(NSString*)message) {
    
    NSString *escapedString   = [assetsLibraryURL.absoluteString stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]]; // urlencodedString
    NSString *escapedCaption  = [message stringByAddingPercentEncodingWithAllowedCharacters:[NSCharacterSet URLHostAllowedCharacterSet]]; // urlencodedString
    NSURL *instagramURL       = [NSURL URLWithString:[NSString stringWithFormat:@"instagram://library?AssetPath=%@&InstagramCaption=%@", escapedString, escapedCaption]];
    
    
    if ([[UIApplication sharedApplication] canOpenURL:instagramURL]) {
        [[UIApplication sharedApplication] openURL:instagramURL];
    }
}


@end
