//
//  main.m
//  Patient_&_Doctor
//
//  Created by Sunny Surdhar on 2015-07-02.
//  Copyright (c) 2015 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Doctor.h"
#import "Patient.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool
    {
        
        Doctor *doctor = [[Doctor alloc]initWithName:@"Dr. Tim Davis" andWithSpecialization:@"Eyes"];
        
        Patient *patient1 = [[Patient alloc]initWithName:@"Jason" andWithAge:24 andWithValidHealthCard:YES andWithSymptom:@"coughing"];
        Patient *patient2 = [[Patient alloc]initWithName:@"Dan" andWithAge:25 andWithValidHealthCard:YES andWithSymptom:@"headache"];
        Patient *patient3 = [[Patient alloc]initWithName:@"Bio" andWithAge:25 andWithValidHealthCard:NO andWithSymptom:@"stomach pain"];
        
        [patient1 visitDoctor:doctor];
        [doctor writePrescription:patient1];
        
        [patient2 visitDoctor:doctor];
        [doctor writePrescription:patient2];
        
        [patient3 visitDoctor:doctor];
        [doctor writePrescription:patient3];
        
    }
    return 0;
}
