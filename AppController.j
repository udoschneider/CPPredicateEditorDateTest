/*
 * AppController.j
 * CPPredicateEditorDateTest
 *
 * Created by Udo Schneider on December 8, 2013.
 * Copyright 2013, Krodelin Software All rights reserved.
 */

@import <Foundation/Foundation.j>
@import <AppKit/AppKit.j>


@implementation AppController : CPObject
{
    @outlet CPWindow    theWindow;
    CPPredicate			_predicate	@accessors(property=predicate);
}

- (void)applicationDidFinishLaunching:(CPNotification)aNotification
{
    // This is called when the application is done loading.
    [self setPredicate:[CPPredicate predicateWithFormat:@"%K = %@", @"name", @"\"Test\""]];
}

- (void)awakeFromCib
{
    // This is called when the cib is done loading.
    // You can implement this method on any object instantiated from a Cib.
    // It's a useful hook for setting up current UI values, and other things.

    // In this case, we want the window from Cib to become our full browser window
    [theWindow setFullPlatformWindow:YES];
}

@end
