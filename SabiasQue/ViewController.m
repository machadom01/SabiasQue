//
//  ViewController.m
//  SabiasQue
//
//  Created by Ramiro Perez on 7/17/25.
//

#import "ViewController.h"
#import <Foundation/Foundation.h>

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // inicializando arrays y su iterador
    self.datosBiologia = @[
        NSLocalizedString(@"bio_d1", nil),
        NSLocalizedString(@"bio_d2", nil),
        NSLocalizedString(@"bio_d3", nil)];
    self.iteradorBiologia = [self.datosBiologia objectEnumerator];
    
    self.datosAstronomia = @[
        NSLocalizedString(@"ast_d1", nil),
        NSLocalizedString(@"ast_d2", nil),
        NSLocalizedString(@"ast_d3", nil)];
    self.iteradorAstronomia = [self.datosAstronomia objectEnumerator];
    
    self.datosHistoria = @[
        NSLocalizedString(@"his_d1", nil),
        NSLocalizedString(@"his_d2", nil),
        NSLocalizedString(@"his_d3", nil)];
    self.iteradorHistoria = [self.datosHistoria objectEnumerator];
    
}

- (IBAction)botonPresionado:(id)sender {
    if ([self.mySegmentedControl selectedSegmentIndex] == 0) {
        id actual = [self.iteradorBiologia nextObject];
        if (actual != nil) {
            self.myLabel.text=((NSString *) actual);
        }
        else {
            self.iteradorBiologia = [self.datosBiologia objectEnumerator];
            actual = [self.iteradorBiologia nextObject];
            self.myLabel.text = ((NSString *) actual);
        }
    }
    else if ([self.mySegmentedControl selectedSegmentIndex] == 1) {
        id actual = [self.iteradorAstronomia nextObject];
        if (actual != nil) {
            self.myLabel.text=((NSString *) actual);
        }
        else {
            self.iteradorAstronomia = [self.datosAstronomia objectEnumerator];
            actual = [self.iteradorAstronomia nextObject];
            self.myLabel.text = ((NSString *) actual);
        }
    }
    else if ([self.mySegmentedControl selectedSegmentIndex] == 2) {
        id actual = [self.iteradorHistoria nextObject];
        if (actual != nil) {
            self.myLabel.text=((NSString *) actual);
        }
        else {
            self.iteradorHistoria = [self.datosHistoria objectEnumerator];
            actual = [self.iteradorHistoria nextObject];
            self.myLabel.text = ((NSString *) actual);
        }
    }
//    self.myLabel.text=
}
- (IBAction)valorCambiado:(id)sender {
}

@end
