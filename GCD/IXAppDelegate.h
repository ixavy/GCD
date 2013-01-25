//
//  IXAppDelegate.h
//  GCD
//
//  Created by Javier García Gallego on 25/01/13.
//  Copyright (c) 2013 ixavy. All rights reserved.
//

#import <UIKit/UIKit.h>

@class IXViewController;

@interface IXAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (strong, nonatomic) IXViewController *viewController;

@end
