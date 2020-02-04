MODEL= 'model name folder'#'deepcascadeWCNN'
BASE_PATH='<base path>'
DATASET_TYPE='<dataset folder name>'

#<<ACC_FACTOR_5x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:0'
ACC_FACTOR='5x' # here the acceleration factor can be changed as needed
EXP_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
USMASK_PATH=${BASE_PATH}'/Reconstruction-for-MRI/us_masks/'${DATASET_TYPE}
echo python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} --usmask_path ${USMASK_PATH}
python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} --usmask_path ${USMASK_PATH} --checkpoint /media/htic/NewVolume1/murali/MR_reconstruction/experiments/kirby/acc_5x/dwt-unet/best_model.pt
#ACC_FACTOR_5x

#EXP_DIR indicates the folder path where the experiment is conducted
#TRAIN_PATH indicates the path in which the training images are present
#VALIDATION_PATH indicates the path to store the valdation images are present 
#USMASK_PATH indicates the undersampling mask .npy files