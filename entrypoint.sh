export codePath=${CODE_PATH:-main}
mkdir -p ${codePath%/*}
mv ./main ./${codePath}
mv /vendor/* ./
ls -ahl
# glide install
bee run $codePath
