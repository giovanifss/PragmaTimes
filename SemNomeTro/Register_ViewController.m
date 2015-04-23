//
//  Register_ViewController.m
//  SemNomeTro
//
//  Created by Giovani Ferreira Silvério da Silva on 22/04/15.
//  Copyright (c) 2015 Giovani Ferreira Silvério da Silva. All rights reserved.
//

#import "Register_ViewController.h"
//#import ""

@interface Register_ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnRegister;
@property (weak, nonatomic) IBOutlet UIButton *btnContinue;

@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtPasswordConfirm;

@end

@implementation Register_ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.btnRegister = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.btnContinue = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    
    int lblSizeTxt = MIN(self.btnRegister.frame.size.width, self.btnRegister.frame.size.height);
    self.btnRegister.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:lblSizeTxt * 0.7];
    
    lblSizeTxt = MIN(self.btnContinue.frame.size.width, self.btnContinue.frame.size.height);
    self.btnContinue.titleLabel.font = [UIFont fontWithName:@"HelveticaNeue" size:lblSizeTxt * 0.7];
    
    self.btnContinue.titleLabel.adjustsFontSizeToFitWidth = YES;
    self.btnRegister.titleLabel.adjustsFontSizeToFitWidth = YES;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onRegisterPressed:(id)sender
{
    
    
    
    
}

- (IBAction)onContinuePressed:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:@"Dados dos cronometros / atletas não serão salvos sem o cadastro. E o andré teve muito trabalho para fazer esta parte. Por favor faça o cadastro!"
                                                   delegate:self
                                          cancelButtonTitle:@"Desculpe, quero fazer cadastro!"
                                          otherButtonTitles:@"Não gosto do andré mesmo...",@"Mostrar Cronometros", nil];
    [alert show];
}

//como fazer o alertview com açoes
-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    switch (buttonIndex) {
        case 1:
            [self opcao1];
            break;
        case 2:
            [self opcao2];
            break;

    }
}
-(void)opcao1{
    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"DIE" message:nil delegate:nil cancelButtonTitle:@"Im sorry...Ill never cancel again!" otherButtonTitles:nil];
    [alert show];
}

-(void)opcao2{
    //como ir para a pagina dos cronometros
    [self performSegueWithIdentifier:@"showMainCollectionView" sender:nil];
    
}

@end