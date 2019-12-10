cp -r src/* ./bin/temp/
v build bin/temp/main.v
echo compiled bin/temp/src
rm -f ./bin/temp/src/*.v
echo cleaned temp.vs
cp -r ./bin/temp/src/ ./bin/exec/
echo moved new binaries to bin/exec
rm -rf bin/temp/*
echo cleared old binares from bin/temp/src