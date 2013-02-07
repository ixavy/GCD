//
//  IXViewController.m
//  GCD
//
//  Created by Javier García Gallego on 25/01/13.
//  Copyright (c) 2013 ixavy. All rights reserved.
//

#import "IXViewController.h"

@interface IXViewController ()

@end

@implementation IXViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)download:(id)sender {
    
    // Creamos una cola
    
//     dispatch_queue_t camila = dispatch_queue_create("download", NULL);
    
    dispatch_queue_t camila = dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, NULL);
    
    // encasquetamos un bloque
    dispatch_async(camila, ^{
        // segundo plano
        NSURL *url = [NSURL URLWithString:@"http://rafaelestrella.es/wp-content/uploads/2009/04/agua_bendita1.jpg"];
        
        NSData *imageData = [NSData dataWithContentsOfURL:url];
        UIImage *image = [UIImage imageWithData:imageData];
        
        // desde el segundo plano le pasamos a primer plano
        dispatch_async(dispatch_get_main_queue(), ^{
            self.photoView.image = image;
        });
    });
    
    
       

    
}
@end
