# Data Cleansing Assignment 1

This codebook will explain each of the output variables which have been provided in the exercise, please see the original data set for a more comprehensive description of the values. the steps performed by run analysis are commented clearly. here is a breakdown of how the code works. This is what is contained in the readme but for completeness i have included it here

* Set working directory, this line will only need changing depending on the environment you are working with
* Read the file into one big data frame
* Convert the labels from numbers to factors
* limit the columns which are visibile (which contain mean/std)
* Replace shorthand words for the actual words
* Generate new data set which has all variabls aggregated- i have made the assumption this data set is diffrent from the first Data set, this could be incorrect however the ambiguity of the exercise made me choose this apporach as meaning the mean at the time seemed redundant.
   


## Variables

* Subject - Numeric - the subject ID
* Activity - Factor - the actvity of the user {WALKING, SITTING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, LAYING}
* Time of Body Accelerometer X Mean - Numeric -  the mean of the accelarometer reading in the X direction
* Time of Body Accelerometer Y Mean - Numeric - the mean of the accelarometer reading in the Y direction
* Time of Body Accelerometer Z Mean - Numeric - the mean of the accelarometer reading in the Z direction
* Time of Body Accelerometer X Standard Deviation - Numeric - the standard deviation of the accelarometer reading in the X direction
* Time of Body Accelerometer Y Standard Deviation - Numeric - the standard deviation of the accelarometer reading in the Y direction
* Time of Body Accelerometer Z Standard Deviation - Numeric - the standard deviation of the accelarometer reading in the Z direction
* Time of Gravity Accelerometer x Mean - Numeric - the mean of the gravity with the Time of the accelarometer reading in the x Direction
* Time of Gravity Accelerometer Y Mean - Numeric - the mean of the gravity with the Time of the accelarometer reading in the Y Direction
* Time of Gravity Accelerometer Z Mean - Numeric - the mean of the gravity with the Time of the accelarometer reading in the Z Direction
* Time of Gravity Accelerometer X Standard Deviation - Numeric - the standard deviation of the gravity with the Time of the accelarometer reading in the X Direction
* Time of Gravity Accelerometer Y Standard Deviation - Numeric - the standard deviation of the gravity with the Time of the accelarometer reading in the Y Direction
* Time of Gravity Accelerometer Z Standard Deviation - Numeric - the standard deviation of the gravity with the Time of the accelarometer reading in the Z Direction
* Time of Body Accelerometer Jerk x Mean - Numeric - the mean of the jerk Accelorometer reading in the X Direction
* Time of Body Accelerometer Jerk Y Mean - Numeric - the mean of the jerk Accelorometer reading in the Y Direction
* Time of Body Accelerometer Jerk Z Mean - Numeric - the mean of the jerk Accelorometer reading in the Z Direction
* Time of Body Accelerometer Jerk X Standard Deviation - Numeric - the standard deviation of the jerk Accelorometer reading in the X Direction
* Time of Body Accelerometer Jerk Y Standard Deviation - Numeric - the standard deviation of the jerk Accelorometer reading in the Y Direction
* Time of Body Accelerometer Jerk Z Standard Deviation - Numeric - the standard deviation of the jerk Accelorometer reading in the Z Direction
* Time of Body Gyrox mean - Numeirc - the mean of the Gyro reading in X Direction
* Time of Body GyroY mean - Numeirc - the mean of the Gyro reading in Y Direction
* Time of Body GyroZ mean - Numeirc - the mean of the Gyro reading in Z Direction
* Time of Body Gyrox Standard Deviation - Numeirc - the Standard Deviation of the Gyro reading in X Direction
* Time of Body GyroY Standard Deviation - Numeirc - the Standard Deviation of the Gyro reading in Y Direction
* Time of Body GyroZ Standard Deviation - Numeirc - the Standard Deviation of the Gyro reading in Z Direction
* Time of Body GyroJerk x Mean - Numeric - the mean of the gryo jerk reading in the X Direction
* Time of Body GyroJerk Y Mean - Numeric - the mean of the gryo jerk reading in the Y Direction
* Time of Body GyroJerk Z Mean - Numeric - the mean of the gryo jerk reading in the Z Direction
* Time of Body GyroJerk x Standard Deviation - Numeric - the Standard Deviation of the gryo jerk reading in the X Direction
* Time of Body GyroJerk Y Standard Deviation - Numeric - the Standard Deviation of the gryo jerk reading in the Y Direction
* Time of Body GyroJerk Z Standard Deviation - Numeric - the Standard Deviation of the gryo jerk reading in the Z Direction
* Time of Body Accelerometer Magnitude Mean - Numeric - the mean magnitude of the accelarometer
* Time of Body Accelerometer Magnitude Standard Deviation - Numeric - the Standard Deviation magnitude of the accelarometer
Time of Body Accelerometer Jerk Magnitude Mean - Numeric - the mean magnitude of the accelarometer Jerk
Time of Body Accelerometer Jerk Magnitude Standard Deviation - Numeric - the Standard Deviation magnitude of the accelarometer Jerk
