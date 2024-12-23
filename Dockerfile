

FROM ubuntu

ARG llvmver=19
copy ins.sh .
run echo $llvmver 
run apt update
run apt install -y wget
run bash ins.sh
run apt install lsb-release wget software-properties-common gnupg -y
run ./llvm.sh $llvmver all
cmd bash 