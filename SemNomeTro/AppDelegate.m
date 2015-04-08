//
//  AppDelegate.m
//  SemNomeTro
//
//  Created by Giovani Ferreira Silvério da Silva on 06/04/15.
//  Copyright (c) 2015 Giovani Ferreira Silvério da Silva. All rights reserved.
//

#import "AppDelegate.h"
#import "User_Model.h"
/*
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKCoreKit/FBSDKCoreKit.h>
#import <FBSDKLoginKit/FBSDKLoginKit.h>
*/

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    
    //tava testando o calculo da idade
    NSDateComponents *date = [[NSDateComponents alloc] init];
    [date setYear:1970];
    [date setMonth:4];
    [date setDay:4];
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    User_Model *test = [[User_Model alloc] initWithName:@"G" Email:@"djaf" andBirthDate:[calendar dateFromComponents:date]];
    
    NSLog(@"%@", test);

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}




/*
// API do Facebook

 Descomentar esse código todo e adicionar o apendice no final para o viewDidLoad
 
- (void)applicationDidBecomeActive:(UIApplication *)application {
  [FBSDKAppEvents activateApp];
}

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
  return [[FBSDKApplicationDelegate sharedInstance] application:application
                                  didFinishLaunchingWithOptions:launchOptions];
}

- (BOOL)application:(UIApplication *)application
            openURL:(NSURL *)url
  sourceApplication:(NSString *)sourceApplication
         annotation:(id)annotation {
  return [[FBSDKApplicationDelegate sharedInstance] application:application
                                                        openURL:url
                                              sourceApplication:sourceApplication
                                                     annotation:annotation];
}
 
- (BOOL)application:(UIApplication *)application
 openURL:(NSURL *)url
 sourceApplication:(NSString *)sourceApplication
 annotation:(id)annotation {
 return [[FBSDKApplicationDelegate sharedInstance] application:application
 openURL:url
 sourceApplication:sourceApplication
 annotation:annotation];
 }

 
 
 
 
 // Adicionar para o viewDidLoad do ViewController
 FBSDKLoginButton *loginButton = [[FBSDKLoginButton alloc] init];
 loginButton.center = self.view.center;
 [self.view addSubview:loginButton];
 */

@end
