MODEL= 'model name folder'#'deepcascadeWCNN'
BASE_PATH='<base path>'
DATASET_TYPE='<dataset folder name>'

#<<ACC_FACTOR_5x
ACC_FACTOR='5x'
TARGET_PATH=${BASE_PATH}'/datasets/'${DATASET_TYPE}'/validation/acc_'${ACC_FACTOR}
PREDICTIONS_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/results'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/'
python evaluate.py --target-path ${TARGET_PATH} --predictions-path ${PREDICTIONS_PATH} --report-path ${REPORT_PATH}
#ACC_FACTOR_5x

#TARGET_PATH is the path containing target images
#PREDICTIONS_PATH is the path containing predicted images
#REPORT_PATH is the path in which the text file containing mean HFN, MSE, PSNR and SSIM metrics needs to be stored.