ARG llvmver=""

FROM ubuntu


copy ins.sh .
run apt install -y wget
run bash ins.sh
run ./llvm.sh ${llvmver} all
cmd bash 