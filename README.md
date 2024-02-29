# EVER_Simulator


<p align="center">
  <img width=300 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/883ada62-4a61-49be-8020-641f993b568b" />
   <img width=150 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/701fb094-edd0-4d97-a3be-eca381d8a3c2" />
</p>

## Car
⚠️ Car is rear wheel drive
<p align="center">
  <img width=300 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/e531c65e-71ad-4ec7-a47f-e57341241bba" />
  <img width=250 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/015fdd9a-85ee-4089-87a4-6a1813992ec3" />
  <img width=250 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/e58e6a4d-1a00-4029-b112-00c7d97d7c12" />
</p>

## Car dimensions
<p align="center">
  <img width=400 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/454b98f2-b021-4aaa-bea5-98a360295845" />
  <img width=400 src="https://github.com/ebrahimabdelghfar/EVER_Simulator/assets/81301684/252c3466-e46b-491d-b2da-d618a25cd6a4" />
</p>

## Car specs

$$
\text{Car mass} = 600.00 Kg
$$

$$
Spring\text{ }Constant = 112000.00 N/m
$$


$$
C = 1280.00 Kg/sec
$$

$$
Wheel\text{ }Track=1.649m
$$

$$
Wheel\text{ }Base=2.269m
$$

$$
\text{Maximum torque delivered to the wheel}=1.311\times10^{04} N.m
$$

$$
\text{steering rate}=70\degree /sec
$$

$$
\text{Steering Torque}=1000N.m 
$$

$$
\text{static friction coff}=0.9
$$

$$
\text{dynamic friction coff}=0.7
$$

$$
\text{maximum turning steering angle}=30 \degree
$$
# Mounted sensor
- GPS
- Velodyne32 3d lidar
- IMU (linear acceleration and angular velocity , angular position)
# Topics
```
/SteeringAngle #subscriber
  #  Type: std_msgs/Float64
  #  info: used to set the steering angle
  #  uint: degree
/cmd_vel #subscriber
  # Type: std_msgs/Float64
  # info: used to set the force on gas pedal range from 0~1 (0 for no pressure on gas pedal and 1 for full pressure on gas pedal).
/odom # publisher
  # type: nav_msgs/Odometry
  # info: used to publish the position and velocity of the vehicle
  # uint: (position is in meter realtive to the world) (orinetation is quatrion and you must transoform it into euler) (Velocity is in meter/sec)
/Imu
    # type: sensor_msgs/Imu
    # info: used to publish the linear acceleration and angular velocity and angular position of the vehicle
    # uint: (linear acceleration is in m/s^2 realtive to the world) (angular velocity is rad/sec)
/velodyne_points
    # type: sensor_msgs/PointCloud2
    # info: used to publish Lidar points cloud
    # uint: of point distance is in meter
/brakes
    # type: std_msgs/Float64
    # info: Used to brake apply brake pressure from 0.0 to 1.0
    # unit: no unit
```
# Notes
⚠️ The Yaw=0 measured from +y-axis not +x-axis <br>
⚠️ Move the file libv_repExtRosVelodyne.so to the coppeliasim main simulator environment
# Reference
@inproceedings{coppeliaSim,
author="E. Rohmer and S. P. N. Singh and M. Freese",
title="CoppeliaSim (formerly V-REP): a Versatile and
Scalable Robot Simulation Framework",
booktitle="Proc. of The International Conference on
Intelligent Robots and Systems (IROS)",
year="2013"
note="www.coppeliarobotics.com"
}
