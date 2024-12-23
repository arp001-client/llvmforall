ARG llvmver=""

FROM ubuntu


copy ins.sh .
run sudo apt install -y wget
run bash ins.sh
run sudo ./llvm.sh ${llvmver} all
cmd bash 