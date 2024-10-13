source /opt/ros/humble/setup.bash

cd /opt/CoppeliaSim_Edu_V4_5_1_rev4_Ubuntu22_04/

colcon build --symlink-install

# Run the simulator
./coppeliaSim.sh /src/ros2_simulator/simulation_enviornment/EverAI_Truck.ttt


