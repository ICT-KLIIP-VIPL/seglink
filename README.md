(This repo is in its alpha state and is subject to changes. Currently, it is mean to unveal the implementation details of the paper. Pretrained model is under preparation and is coming soon.)

# SegLink

Detecting Oriented Text in Natural Images by Linking Segments (https://arxiv.org/abs/1703.06520).

## Prerequisites

The project is written in **Python3** and C++ and relies on TensorFlow v1.0 or newer. We
have only tested it on Ubuntu 14.04. If you are using other Linux versions, we suggest using Docker. CMake (version >= 2.8) is required to compile the C++ code. Install TensorFlow (GPU-enabled) by following the instructions on https://www.tensorflow.org/install/. The project requires no other Python packages.

On Ubuntu 14.04, install the required packages by
```
sudo apt-get install cmake
sudo pip install --upgrade tensorflow-gpu
```

Also, you may need to install some other packages.
Feel free to check the packages below:

```
# use pip3 instead of pip to install packages for python3 instead of python2
sudo install pip3
pip3 install joblib
pip3 install scikit-image
```

## Installation

The project uses `manage.py` to execute commands for compiling code and running training and testing programs. For installation, execute
```
./manage.py build_op
```
in the project directory to compile the custom TensorFlow operators written in C++. To remove the compiled binaries, execute
```
./manage.py clean_op
```

## Dataset Preparation

See ``tool/create_datasets.py''

## Training

```
./manage.py train <exp-directory>
```

For detaile information, please see [this](HowToTrain.md)

## Evaluation

See ``evaluate.py''


## Q&A
If you encounter the problem such as `'third_party/eigen3/unsupported/Eigen/CXX11/Tensor' file not found` while you compile, please check the solution [here](https://github.com/bgshih/seglink/issues/1#issuecomment-327790608)
