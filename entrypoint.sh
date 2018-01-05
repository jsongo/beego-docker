export codePath=${CODE_PATH:-main}
mkdir -p ${codePath%/*}
mv ./main ./${codePath}
# ls -ahl
glide install
bee run $codePath