//
//  Doctor.m
//  Patient_&_Doctor
//
//  Created by Sunny Surdhar on 2015-07-02.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"
@implementation Doctor

-(instancetype)initWithName:(NSString*)name andWithSpecialization:(NSString*)specialization{
    self = [super init];
    
    if (self) {
        self.name = name;
        self.specialization = specialization;
        self.patientList = [[NSMutableArray alloc]init];
        self.diagnosis = @{@"coughing":@"cough syrup", @"headache":@"advil", @"stomach pain":@"tums"};
        self.prescriptionList = [[NSMutableArray alloc]init];
    }
    return self;
}

-(void)visit: (Patient*)patient
{
    
    NSLog(@"Do you have a valid health card?\n");
    if (patient.validHealthCard == YES) {
        [self.patientList addObject:patient];
    } else {
        NSLog(@"I'm sorry I cannot accept you\n");
    }
    
}

-(void)writePrescription: (Patient*)patient
{
    
    if ([self.patientList containsObject:patient]) {
        NSLog(@"What is your symptom?\n");
        NSLog(@"My symptom is %@.\n", patient.symptom);
        
        NSString* prescription = [self.diagnosis valueForKey:patient.symptom];
        
        if (prescription == nil) {
            NSLog(@"I don't a cure for that.\n");
        } else {
            NSLog(@"Here, have a %@.\n", prescription);
            [self.prescriptionList addObject:prescription];
        }
    }
    
}

@end
