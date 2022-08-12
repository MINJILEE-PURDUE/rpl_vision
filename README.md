#### Instruction to run detect.py


1. Clone repo and install requirements.txt in a Python>=3.7.0 environment, including PyTorch>=1.7.

```git clone https://github.com/MINJILEE-PURDUE/rpl_vision.git``` # clone

2. pip install -r requirements.txt  # install all specific version requirements 

```cd rpl_vision```

3. check docker version: ```docker --version``` and run ```sudo docker build -t {name} . sudo docker run -it {name}```

4. ```python3 detect.py --weights runs/train/exp2/weights/best.pt --source ./rgb_62.png```
