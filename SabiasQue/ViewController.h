//
//  ViewController.h
//  SabiasQue
//
//  Created by Ramiro Perez on 7/17/25.
//

#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIButton *myButton;
//se weak para que no se retenga en memoria el valor de esta propiedad, se libere y pase a nil una vez que la UIView se destruya. Y nonatomic es para que de mejor rendimiento al implicar no protegerse contra accesos concurrente (no usar locks para sincronizar los hilos), cosa que por lo general no se requiere para elementos de UI
@property (weak, nonatomic) IBOutlet UILabel *myLabel;
@property (weak, nonatomic) IBOutlet UISegmentedControl *mySegmentedControl;

@property (strong, nonatomic) NSArray *datosBiologia, *datosAstronomia, *datosHistoria;
@property (strong, nonatomic) NSEnumerator *iteradorBiologia, *iteradorAstronomia, *iteradorHistoria;

- (IBAction)botonPresionado:(id)sender;
- (IBAction)valorCambiado:(id)sender;

@end

