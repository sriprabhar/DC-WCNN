
MODEL= 'model name folder'#'deepcascadeWCNN'
BASE_PATH='<base path>'

#<<ACC_FACTOR_5x
ACC_FACTOR='5x'
DATASET_TYPE='kirby'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
#ACC_FACTOR_5x

#REPORT_PATH is the path to the text file containing mean HFN, MSE, PSNR and SSIM metrics.

