export codePath=${CODE_PATH:-main}
mv /go/src/main /go/src/$codePath
bee run $codePath