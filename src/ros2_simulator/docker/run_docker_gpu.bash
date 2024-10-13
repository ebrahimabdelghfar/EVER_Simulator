xhost local:root

XAUTH=/tmp/.docker.xauth

docker run \
    --name=ros2_simulator \
    --env="DISPLAY=$DISPLAY" \
    --env="QT_X11_NO_MITSHM=1" \
    --env="XAUTHORITY=$XAUTH" \
    --volume="$XAUTH:$XAUTH" \
    --volume="/tmp/.X11-unix:/tmp/.X11-unix:rw" \
    --net=host \
    --privileged \
    --gpus all \
    --runtime=nvidia \
    ros2_simulator
    bash
echo "docker run finished"