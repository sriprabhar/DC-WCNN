MODEL='deepcascadeWCNN1-real-pretrained'
BASE_PATH='/media/htic/NewVolume1/murali/MR_reconstruction'
DATASET_TYPE='kirby'

<<ACC_FACTOR_2x
ACC_FACTOR='2x'
TARGET_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH} 
ACC_FACTOR_2x

<<ACC_FACTOR_3.3x
ACC_FACTOR='3_3x'
TARGET_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
DATASET_TYPE='kirby'
echo python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH} 
ACC_FACTOR_3.3x

#<<ACC_FACTOR_5x
ACC_FACTOR='5x'
TARGET_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH}
#ACC_FACTOR_5x

<<RUN

#<<ACC_FACTOR_2.5x
ACC_FACTOR='2_5x'
DATASET_TYPE='kirby'
MODEL='unet'
TARGET_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH} 
#ACC_FACTOR_2.5x

#<<ACC_FACTOR_4x
ACC_FACTOR='4x'
DATASET_TYPE='kirby'
MODEL='unet'
TARGET_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH} 
#ACC_FACTOR_4x

#<<ACC_FACTOR_8x
ACC_FACTOR='8x'
DATASET_TYPE='kirby'
MODEL='unet'
TARGET_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH}
#ACC_FACTOR_8x

RUN
