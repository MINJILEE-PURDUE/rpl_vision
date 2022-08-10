# Start FROM NVIDIA PyTorch image https://ngc.nvidia.com/catalog/containers/nvidia:pytorch
FROM waggle/plugin-base:1.1.1-ml

# Downloads to user config dir
ADD https://ultralytics.com/assets/Arial.ttf https://ultralytics.com/assets/Arial.Unicode.ttf /root/.config/Ultralytics/

# Install linux packages
RUN apt update && apt install --no-install-recommends -y zip htop screen libgl1-mesa-glx python3-tk

# Install pip packages
COPY requirements.txt .
RUN python3 -m pip install --upgrade pip
#RUN pip3 uninstall -y torch torchvision 
RUN pip3 install --no-cache -r requirements.txt albumentations wandb gsutil notebook Pillow>=9.1.0

# Create working directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

# Copy contents
COPY . /usr/src/app
# RUN git clone https://github.com/ultralytics/yolov5 /usr/src/yolov5

# Set environment variables
ENV OMP_NUM_THREADS=8
