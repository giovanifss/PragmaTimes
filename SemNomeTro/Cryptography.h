//
//  Cryptography.h
//  chronometer
//
//  Created by Giovani Ferreira Silvério da Silva on 14/04/15.
//  Copyright (c) 2015 Giovani Ferreira Silvério da Silva. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Cryptography : NSObject

@property (nonatomic) NSString *password, *sal;

- (instancetype)initWithPassword:(NSString*)psw;
- (instancetype)initComSenha:(NSString *)senha eSal:(NSString *)sal;
-(BOOL)autenticaSenha:(NSString *)senha eSal:(NSString *)sal;
@end
