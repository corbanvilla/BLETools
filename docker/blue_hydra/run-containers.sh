echo "did you disable bluetooth service first?"

sleep 5

docker run -it --network=host --privileged animcogn/blue_hydra:latest
