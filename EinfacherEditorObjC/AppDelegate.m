//
//  AppDelegate.m
//  EinfacherEditorObjC
//
//  Created by Christoph Siebeck
//  Copyright © 2016 Christoph Siebeck. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@property (weak) IBOutlet NSWindow *window;
@end

@implementation AppDelegate

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification {
    // Insert code here to initialize your application
}


- (void)applicationWillTerminate:(NSNotification *)aNotification {
    // Insert code here to tear down your application
}


- (IBAction)ladenClicked:(id)sender {
    //den Dialog erzeugen
    NSOpenPanel *meinOeffnenDialog = [NSOpenPanel openPanel];
    
    //den Titel setzen
    [meinOeffnenDialog setTitle: @"Öffnen"];
    //die Standardtaste setzen
    [meinOeffnenDialog setPrompt: @"Öffnen"];
    //es sollen nur Textdateien angezeigt werden
    [meinOeffnenDialog setAllowedFileTypes: @[@"txt"]];
    
    //wurde etwas ausgewählt?
    if ([meinOeffnenDialog runModal] == NSModalResponseOK) {
        //den Dateinamen beschaffen
        NSString *meineDatei = [[meinOeffnenDialog URL] path];
        //und laden und anzeigen
        NSString *textTemp = [[NSString alloc] initWithContentsOfFile: meineDatei encoding:NSUTF8StringEncoding error:nil];
        _meinTextfeld.stringValue = textTemp;
    }
}

- (IBAction)speichernClicked:(id)sender {
    //den Dialog erzeugen
    NSSavePanel *meinSpeichernDialog = [NSSavePanel savePanel];
    
    //den Titel setzen
    [meinSpeichernDialog setTitle: @"Speichern unter"];
    //die Standardtaste setzen
    [meinSpeichernDialog setPrompt: @"Speichern unter"];
    //es sollen nur Textdateien erlaubt sein
    [meinSpeichernDialog setAllowedFileTypes: @[@"txt"]];
    
    //wurde etwas ausgewählt?
    if ([meinSpeichernDialog runModal] == NSModalResponseOK) {
        //den Dateinamen beschaffen
        NSString *meineDatei = [[meinSpeichernDialog URL] path];
        //und speichern
        NSString *textTemp = _meinTextfeld.stringValue;
        [textTemp writeToFile: meineDatei atomically:YES encoding:NSUTF8StringEncoding error:nil];
    }
}

- (IBAction)neuClicked:(id)sender {
    _meinTextfeld.stringValue = @"";
}

@end
