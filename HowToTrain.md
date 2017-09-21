## Training details

### Pretrain on SynthText

Suppose you want to `pretrain` on the [SynthText dataset](http://www.robots.ox.ac.uk/~vgg/data/scenetext/), after downloading the dataset:

1. Generate `tfrecord` format file using [create_datasets.py](/tool/create_datasets.py).
> Comment the `ICDAR 2015 incidental` related code and uncomment the `create_synthtext_dataset` related code in `__main__`;
>
> Don't forget to modify the `data_root` and the path you want to save your `tf` files.

2. Convert `caffemodel` into tensorflow model
> Download model from [here](http://cs.unc.edu/~wliu/projects/ParseNet/) and the prototext file [here](https://github.com/conner99/VGGNet/blob/master/VGG_ILSVRC_16_layers_fc_reduced_deploy.prototxt)
> modify the path in the [run.sh](.tool/convert_caffe_model/run.sh)

3. Train / pretrain / test using the `manage.py`
For example, if you want to pretrain using the `SynthText`, then
```
./manage.py train ./exp/sgd/ pretrains
```
