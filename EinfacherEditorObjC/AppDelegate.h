//
//  AppDelegate.h
//  EinfacherEditorObjC
//
//  Created by Christoph Siebeck
//  Copyright © 2016 Christoph Siebeck. All rights reserved.
//

#import <Cocoa/Cocoa.h>

@interface AppDelegate : NSObject <NSApplicationDelegate>

//Outlets
@property (weak) IBOutlet NSTextField *meinTextfeld;

//actions
- (IBAction)ladenClicked:(id)sender;
- (IBAction)speichernClicked:(id)sender;
- (IBAction)neuClicked:(id)sender;

@end

