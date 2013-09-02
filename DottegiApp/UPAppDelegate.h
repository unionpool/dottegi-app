//
//  UPAppDelegate.h
//  DottegiApp
//
//  Created by Saerohoon Yang on 13. 9. 2..
//  Copyright (c) 2013년 Union Pool. All rights reserved.
//

#import <UIKit/UIKit.h>

@class UPMainViewController;
@class UPRandomViewController;
@class UPCameraViewController;
@class UPNewsViewController;
@class UPUserViewController;

@interface UPAppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;

@property (strong, nonatomic) UPMainViewController *mainViewController;
@property (strong, nonatomic) UPRandomViewController *randomViewController;
@property (strong, nonatomic) UPCameraViewController *camViewController;
@property (strong, nonatomic) UPNewsViewController *newsViewController;
@property (strong, nonatomic) UPUserViewController *userViewController;
@property (strong, nonatomic) UITabBarController *tabBarController;

@property (strong, nonatomic) UINavigationController *mainNavController;
@property (strong, nonatomic) UINavigationController *randomNavController;
@property (strong, nonatomic) UINavigationController *userNavController;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
