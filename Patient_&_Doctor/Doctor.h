//
//  Doctor.h
//  Patient_&_Doctor
//
//  Created by Sunny Surdhar on 2015-07-02.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
@class Patient;

@interface Doctor : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic, strong) NSString *specialization;
@property (nonatomic, strong) NSMutableArray *patientList;
@property (nonatomic, strong) NSDictionary *diagnosis;
@property (nonatomic, strong) NSMutableArray *prescriptionList;

-(instancetype)initWithName:(NSString*)name andWithSpecialization:(NSString*)specialization;

-(void)visit: (Patient*)patient;

-(void)writePrescription: (Patient*)patient;

@end
