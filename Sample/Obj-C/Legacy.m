//
//  Legacy.m
//  Sample
//
//  Created by Artūrs Āre on 30/12/2021.
//

#import "Legacy.h"
#import "Sample-Swift.h"

@implementation Legacy

- (NSString *)getID {
    return [Wrapper new].getDeviceId;
}

@end
