# digits

1- Building the gpu/digits-trainer:v1 image

sudo ./build_gpu_digits.sh

2- Running and testing the Digits and CUDA Docker based container

sudo nvidia-docker run --name digits -v /tmp/data:/data  -v /tmp/s3-endpoint:/s3-endpoint --rm -dti -p 5000:5000 gpu/digits-trainer:v1

3- Open Web Browser and set URL to 'localhost:5000' to see the DIGITS Dashboard 
