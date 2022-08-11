check docker version first: ```docker --version```

```git clone https://github.com/MINJILEE-PURDUE/rpl_vision.git```

```cd rpl_vision.git```

``` sudo docker build -t {} . ``` 
``` sudo docker run -it {} ```

python3 detect.py --weights runs/train/exp2/weights/best.pt --source ./rgb_62.png
