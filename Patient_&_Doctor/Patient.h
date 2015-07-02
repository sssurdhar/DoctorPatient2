//
//  Patient.h
//  Patient_&_Doctor
//
//  Created by Sunny Surdhar on 2015-07-02.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"

@interface Patient : NSObject

@property (nonatomic, strong) NSString *name;
@property (nonatomic) int age;
@property (nonatomic) BOOL validHealthCard;
@property (nonatomic, strong) NSString *symptom;

-(instancetype) initWithName:(NSString*)name andWithAge:(int)age andWithValidHealthCard:(BOOL)validHealthCard andWithSymptom:(NSString*)symptom;

-(void)visitDoctor: (Doctor*)doctor;

@end
