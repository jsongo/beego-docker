export codePath=${CODE_PATH:-main}
mkdir -p ${codePath%/*}
mv ./main ./${codePath}
ls -ahl
bee run $codePath