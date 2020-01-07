MODEL='deepcascadeWCNN1-real-pretrained'
BASE_PATH='/media/htic/NewVolume1/murali/MR_reconstruction'
DATASET_TYPE='kirby'

<<ACC_FACTOR_2x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:0'
ACC_FACTOR='2x'
EXP_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
USMASK_PATH=${BASE_PATH}'/Reconstruction-for-MRI/us_masks/'${DATASET_TYPE}
echo python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} --usmask_path ${USMASK_PATH}
ACC_FACTOR_2x

<<ACC_FACTOR_3.3x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:1'
ACC_FACTOR='3_3x'
EXP_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
USMASK_PATH=${BASE_PATH}'/Reconstruction-for-MRI/us_masks/'${DATASET_TYPE}
echo python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE}
ACC_FACTOR_3.3x

#<<ACC_FACTOR_5x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:0'
ACC_FACTOR='5x'
EXP_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
USMASK_PATH=${BASE_PATH}'/Reconstruction-for-MRI/us_masks/'${DATASET_TYPE}
echo python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} --usmask_path ${USMASK_PATH}
python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} --usmask_path ${USMASK_PATH} --checkpoint /media/htic/NewVolume1/murali/MR_reconstruction/experiments/kirby/acc_5x/dwt-unet/best_model.pt
#ACC_FACTOR_5x



<<RUN

<<ACC_FACTOR_2.5x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:0'
ACC_FACTOR='2_5x'
DATASET_TYPE='kirby'

EXP_DIR='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
echo python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
ACC_FACTOR_2.5x



<<ACC_FACTOR_4x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:1'
ACC_FACTOR='4x'
DATASET_TYPE='kirby'

EXP_DIR='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}/validation/acc_'${ACC_FACTOR}
echo python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE}
ACC_FACTOR_4x



#<<ACC_FACTOR_8x
BATCH_SIZE=4
NUM_EPOCHS=150
DEVICE='cuda:0'
ACC_FACTOR='8x'
DATASET_TYPE='kirby'

EXP_DIR='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}
TRAIN_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/train/acc_'${ACC_FACTOR}
VALIDATION_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
python train.py --batch-size ${BATCH_SIZE} --num-epochs ${NUM_EPOCHS} --device ${DEVICE} --exp-dir ${EXP_DIR} --train-path ${TRAIN_PATH} --validation-path ${VALIDATION_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE}
#ACC_FACTOR_8x


RUN
