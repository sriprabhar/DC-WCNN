MODEL='deepcascadeWCNN3-real-pretrained'
BASE_PATH='/media/htic/NewVolume1/murali/MR_reconstruction'

<<ACC_FACTOR_2x
ACC_FACTOR='2x'
DATASET_TYPE='kirby'
CHECKPOINT=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/best_model.pt'
OUT_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
BATCH_SIZE=1
DEVICE='cuda:0'
DATA_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
ACC_FACTOR_2x

<<ACC_FACTOR_3.3x
ACC_FACTOR='3_3x'
DATASET_TYPE='kirby'
CHECKPOINT=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/best_model.pt'
OUT_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
BATCH_SIZE=1
DEVICE='cuda:1'
DATA_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
echo python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
ACC_FACTOR_3.3x

#<<ACC_FACTOR_5x
ACC_FACTOR='5x'
DATASET_TYPE='kirby'
CHECKPOINT=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/best_model.pt'
OUT_DIR=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
BATCH_SIZE=1
DEVICE='cuda:0'
DATA_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
echo python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
#ACC_FACTOR_5x



<<RUN

#<<ACC_FACTOR_2.5x
ACC_FACTOR='2_5x'
DATASET_TYPE='kirby'
CHECKPOINT='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/best_model.pt'
OUT_DIR='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
BATCH_SIZE=1
DEVICE='cuda:0'
DATA_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} &
#ACC_FACTOR_2.5x


#<<ACC_FACTOR_4x
ACC_FACTOR='4x'
DATASET_TYPE='kirby'
CHECKPOINT='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/best_model.pt'
OUT_DIR='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
BATCH_SIZE=1
DEVICE='cuda:1'
DATA_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
#ACC_FACTOR_4x


#<<ACC_FACTOR_8x
ACC_FACTOR='8x'
DATASET_TYPE='kirby'
CHECKPOINT='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/best_model.pt'
OUT_DIR='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
BATCH_SIZE=1
DEVICE='cuda:0'
DATA_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
python valid.py --checkpoint ${CHECKPOINT} --out-dir ${OUT_DIR} --batch-size ${BATCH_SIZE} --device ${DEVICE} --data-path ${DATA_PATH} --acceleration_factor ${ACC_FACTOR} --dataset_type ${DATASET_TYPE} 
#ACC_FACTOR_8x

RUN
