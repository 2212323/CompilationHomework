#!/bin/bash

# 确保传入了参数
if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <file.ll>"
    exit 1
fi

# 定义变量
INPUT_FILE="$1"
OUTPUT_FILE="output"
EXECUTABLE="hello244"

# 清理上次生成的文件
rm -f "$OUTPUT_FILE" "$EXECUTABLE"

# 生成目标文件
clang --target=arm-linux-gnueabihf -mcpu=cortex-a8 -mfloat-abi=hard -o "$EXECUTABLE" "$INPUT_FILE" -lm

# 检查是否成功生成了可执行文件
if [ ! -f "$EXECUTABLE" ]; then
    echo "Error: Failed to generate executable."
    exit 1
fi

# 运行可执行文件
# 请根据您的实际环境调整 LD_LIBRARY_PATH
# 例如，如果 '/lib/ld-linux-armhf.so.3' 不在标准路径中，可以设置 LD_LIBRARY_PATH 变量
export LD_LIBRARY_PATH=/usr/arm-linux-gnueabihf/lib

# 运行 QEMU
qemu-arm -L /usr/arm-linux-gnueabihf/ ./"$EXECUTABLE"

# 检查 QEMU 运行是否成功
if [ $? -ne 0 ]; then
    echo "Error: Failed to run executable with QEMU."
    exit 1
fi

# 清理生成的文件
rm -f "$EXECUTABLE"
