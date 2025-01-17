//
//  Register_ViewController.m
//  SemNomeTro
//
//  Created by Giovani Ferreira Silvério da Silva on 22/04/15.
//  Copyright (c) 2015 Giovani Ferreira Silvério da Silva. All rights reserved.
//

#import "Register_ViewController.h"
#import "GeneralController.h"

@interface Register_ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *btnRegister;
@property (weak, nonatomic) IBOutlet UIButton *btnContinue;

@property (weak, nonatomic) IBOutlet UITextField *txtEmail;
@property (weak, nonatomic) IBOutlet UITextField *txtPassword;
@property (weak, nonatomic) IBOutlet UITextField *txtPasswordConfirm;

@property (nonatomic) UIGestureRecognizer *tapRecognizer;

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
    
    self.tapRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(handleSingleTap:)];
    self.tapRecognizer.cancelsTouchesInView = NO;
    [self.view addGestureRecognizer:self.tapRecognizer];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)handleSingleTap:(UITapGestureRecognizer *) sender
{
    [self.view endEditing:YES];
}

- (IBAction)onRegisterPressed:(id)sender
{
//    NSString *email = [NSString stringWithFormat:@"%@", self.txtEmail.text];
    NSString *email = self.txtEmail.text;
    NSString *nome = self.txtPassword.text;
    NSString *sexo = self.txtPasswordConfirm.text;
    
    GeneralController *gc = [[GeneralController alloc] init];
    
    [gc adicionarAtleta:email nome:nome foto:@"" peso:@1 altura:@1 sexo:sexo];
    
    UIAlertView *alrt = [[UIAlertView alloc] initWithTitle:@"" message:@"Successfully Registered" delegate:self cancelButtonTitle:nil otherButtonTitles:@"OK", nil];
    alrt.tag = 1;
    [alrt show];
}

- (IBAction)onContinuePressed:(id)sender
{
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@""
                                                    message:@"You will not be able to save your times! Continue?"
                                                   delegate:self
                                          cancelButtonTitle:@"Cancel"
                                          otherButtonTitles:@"Continue Without Register", nil];
    alert.tag = 2;
    
    [alert show];
}

//como fazer o alertview com açoes
-(void)alertView:(UIAlertView*)alertView clickedButtonAtIndex:(NSInteger)buttonIndex{
    if (alertView.tag == 1) {
        switch (buttonIndex) {
            case 0:
                [self performSegueWithIdentifier:@"showMainCollectionView" sender:nil];
                break;
        }
    }else{
        switch (buttonIndex) {
            case 1:
                [self opcao1];
                break;
        }
    }
}
-(void)opcao1{
    [self performSegueWithIdentifier:@"showMainCollectionView" sender:nil];
//    UIAlertView *alert = [[UIAlertView alloc]initWithTitle:@"DIE" message:nil delegate:nil cancelButtonTitle:@"Im sorry...Ill never cancel again!" otherButtonTitles:nil];
//    [alert show];
}

//-(void)opcao2{
//    //como ir para a pagina dos cronometros
//    [self performSegueWithIdentifier:@"showMainCollectionView" sender:nil];
//    
//}

@end