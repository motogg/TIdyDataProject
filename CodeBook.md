# CodeBook For Summarized Dataset.

### All Variables
"X-AxisTimeDomainBodyAcceleration_Mean"                
"Y-AxisTimeDomainBodyAcceleration_Mean"                
"Z-AxisTimeDomainBodyAcceleration_Mean"                
"X-AxisTimeDomainBodyAcceleration_Sdev"               
"Y-AxisTimeDomainBodyAcceleration_Sdev"                
"Z-AxisTimeDomainBodyAcceleration_Sdev"               
"X-AxisTimeDomainGravityAcceleration_Mean"             
"Y-AxisTimeDomainGravityAcceleration_Mean"            
"Z-AxisTimeDomainGravityAcceleration_Mean"             
"X-AxisTimeDomainGravityAcceleration_Sdev"            
"Y-AxisTimeDomainGravityAcceleration_Sdev"             
"Z-AxisTimeDomainGravityAcceleration_Sdev"            
"X-AxisTimeDomainBodyAccelerationJerk_Mean"           
"Y-AxisTimeDomainBodyAccelerationJerk_Mean"           
"Z-AxisTimeDomainBodyAccelerationJerk_Mean"           
"X-AxisTimeDomainBodyAccelerationJerk_Sdev"           
"Y-AxisTimeDomainBodyAccelerationJerk_Sdev"            
"Z-AxisTimeDomainBodyAccelerationJerk_Sdev"           
"X-AxisTimeDomainBodyAngularVelocity_Mean"             
"Y-AxisTimeDomainBodyAngularVelocity_Mean"            
"Z-AxisTimeDomainBodyAngularVelocity_Mean"             
"X-AxisTimeDomainBodyAngularVelocity_Sdev"            
"Y-AxisTimeDomainBodyAngularVelocity_Sdev"            
"Z-AxisTimeDomainBodyAngularVelocity_Sdev"            
"X-AxisTimeDomainBodyAngularVelocityJerk_Mean"         
"Y-AxisTimeDomainBodyAngularVelocityJerk_Mean"        
"Z-AxisTimeDomainBodyAngularVelocityJerk_Mean"         
"X-AxisTimeDomainBodyAngularVelocityJerk_Sdev"        
"Y-AxisTimeDomainBodyAngularVelocityJerk_Sdev"         
"Z-AxisTimeDomainBodyAngularVelocityJerk_Sdev"        
"TimeDomainBodyAccelerationMagnitude_Mean"             
"TimeDomainBodyAccelerationMagnitude_Sdev"            
"TimeDomainGravityAccelerationMagnitude_Mean"          
"TimeDomainGravityAccelerationMagnitude_Sdev"         
"TimeDomainBodyAccelerationJerkMagnitude_Mean"        
"TimeDomainBodyAccelerationJerkMagnitude_Sdev"        
"TimeDomainBodyAngularVelocityMagnitude_Mean"        
"TimeDomainBodyAngularVelocityMagnitude_Sdev"         
"TimeDomainBodyAngularVelocityJerkMagnitude_Mean"      
"TimeDomainBodyAngularVelocityJerkMagnitude_Sdev"     
"X-AxisFrequencyDomainBodyAcceleration_Mean"           
"Y-AxisFrequencyDomainBodyAcceleration_Mean"          
"Z-AxisFrequencyDomainBodyAcceleration_Mean"          
"X-AxisFrequencyDomainBodyAcceleration_Sdev"          
"Y-AxisFrequencyDomainBodyAcceleration_Sdev"          
"Z-AxisFrequencyDomainBodyAcceleration_Sdev"          
"X-AxisFrequencyDomainBodyAccelerationJerk_Mean"      
"Y-AxisFrequencyDomainBodyAccelerationJerk_Mean"      
"Z-AxisFrequencyDomainBodyAccelerationJerk_Mean"       
"X-AxisFrequencyDomainBodyAccelerationJerk_Sdev"      
"Y-AxisFrequencyDomainBodyAccelerationJerk_Sdev"      
"Z-AxisFrequencyDomainBodyAccelerationJerk_Sdev"      
"X-AxisFrequencyDomainBodyAngularVelocity_Mean"       
"Y-AxisFrequencyDomainBodyAngularVelocity_Mean"       
"Z-AxisFrequencyDomainBodyAngularVelocity_Mean"       
"X-AxisFrequencyDomainBodyAngularVelocity_Sdev"       
"Y-AxisFrequencyDomainBodyAngularVelocity_Sdev"       
"Z-AxisFrequencyDomainBodyAngularVelocity_Sdev"       
"FrequencyDomainBodyAccelerationMagnitude_Mean"        
"FrequencyDomainBodyAccelerationMagnitude_Sdev"       
"FrequencyDomainBodyAccelerationJerkMagnitude_Mean"    
"FrequencyDomainBodyAccelerationJerkMagnitude_Sdev"   
"FrequencyDomainBodyAngularVelocityMagnitude_Mean"     
"FrequencyDomainBodyAngularVelocityMagnitude_Sdev"    
"FrequencyDomainBodyAngularVelocityJerkMagnitude_Mean" 
"FrequencyDomainBodyAngularVelocityJerkMagnitude_Sdev"
"Activity"
"Subject"    

Total Number of Variables: 68
Total Number of Obsevations : 180


### Breakdown of parts of Measurement Variables ( All Measuremnt Variables are of type numeric)
X-Axis : Refers to the X-Axis orientation of the measurement
Y-Axis : Refers to the Y-Axis orientation of the measurement
Z-Axis : Refers to the Z-Axis orientation of the measurement

TimeDomain: Refers to measurements taken in the TimeDomain
FreqencyDomain: Refers to measurements taken in the Freqency Domain

GravityAcceleration: Refers to the Acceleration due to Gravity taken from the Accelerometer
BodyAcceleration: Refers to the Acceleration of the Body taken from the Accelerometer
BodyAngularVelocity: Refers to the Angular Velocity of the Body gotten from the Gyroscope

_Mean: Refers to the Mean of the measurememnt 
_Sdev: Refers to the Standard deviation of the measurement

Jerk: Refers to Jerk signals obtained from the Accelrometer and Gyroscope

### Variables Relating to Activity and Subject 

Activity: (Factor) Refers to the Activity the subject was performing
Subject: (Factor) Regers to the Subject of the experiment
