# convert caffe model
CUDA_VISIBLE_DEVICES=0 python3 dump_caffemodel_weights.py \
  --caffe_root /home/stick/caffe-py3/ \
  --prototxt_path ../../VGGNET/VGG_ILSVRC_16_layers_fc_reduced_deploy.prototxt \
  --caffemodel_path ../../VGGNET/VGG_ILSVRC_16_layers_fc_reduced.caffemodel \
  --caffe_weights_path ./VGG_ILSVRC_16_layers_weights.pkl

# # convert to tensorflow checkpoint
CUDA_VISIBLE_DEVICES=0 python3 convert_caffemodel_to_ckpt.py \
  --model_scope ssd/vgg16 \
  --ckpt_path ../../model/VGG_ILSVRC_16_layers_ssd.ckpt \
  --caffe_weights_path ./VGG_ILSVRC_16_layers_weights.pkl
