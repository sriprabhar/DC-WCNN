
MODEL='deepcascadeWCNN1-real-pretrained'
BASE_PATH='/media/htic/NewVolume1/murali/MR_reconstruction'

<<ACC_FACTOR_2x
ACC_FACTOR='2x'
DATASET_TYPE='kirby'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
ACC_FACTOR_2x

<<ACC_FACTOR_3.3x
ACC_FACTOR='3_3x'
DATASET_TYPE='kirby'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
ACC_FACTOR_3.3x

#<<ACC_FACTOR_5x
ACC_FACTOR='5x'
DATASET_TYPE='kirby'
REPORT_PATH=${BASE_PATH}'/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
#ACC_FACTOR_5x

<<RUN

#<<ACC_FACTOR_2.5x
ACC_FACTOR='2_5x'
DATASET_TYPE='kirby'
MODEL='unet'
REPORT_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
#ACC_FACTOR_2.5x

#<<ACC_FACTOR_4x
ACC_FACTOR='4x'
DATASET_TYPE='kirby'
MODEL='unet'
REPORT_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
#ACC_FACTOR_4x

#<<ACC_FACTOR_8x
ACC_FACTOR='8x'
DATASET_TYPE='kirby'
MODEL='unet'
REPORT_PATH='/media/htic/NewVolume1/murali/MR_reconstruction/experiments/'${DATASET_TYPE}'/acc_'${ACC_FACTOR}'/'${MODEL}'/report.txt'
echo ${ACC_FACTOR}
cat ${REPORT_PATH}
echo "\n"
#ACC_FACTOR_8x


RUN
