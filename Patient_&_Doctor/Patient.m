//
//  Patient.m
//  Patient_&_Doctor
//
//  Created by Sunny Surdhar on 2015-07-02.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(instancetype) initWithName:(NSString*)name andWithAge:(int)age andWithValidHealthCard:(BOOL)validHealthCard andWithSymptom:(NSString*)symptom {
    
    self = [super init];
    
    if (self) {
        
        self.name = name;
        self.age = age;
        self.validHealthCard = validHealthCard;
        self.symptom = symptom;
    }
    return self;
}

-(void)visitDoctor: (Doctor*)doctor {
    
    [doctor visit:self];
    
}

@end
