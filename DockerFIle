ARG llvmver=""

FROM ubuntu


copy ins.sh .
run bash ins.sh
run sudo ./llvm.sh ${llvmver} all
cmd bash 