//
//  UPAppDelegate.h
//  DottegiApp
//
//  Created by Saerohoon Yang on 13. 9. 2..
//  Copyright (c) 2013년 Union Pool. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
