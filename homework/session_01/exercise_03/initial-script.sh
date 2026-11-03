#!/bin/bash

## Cập nhật hệ thống
sudo apt-get update && sudo apt-get upgrade -y

## Cài đặt các gói phần mềm bắt buộc 
sudo apt-get install -y openjdk-17-jdk curl git

## Kiểm tra sự tồn tại của nhóm (group) quickbite. Nếu chưa có, thực hiện lệnh tạo nhóm
GROUP_NAME="quickbite"

### Kiểm tra group có tồn tại hay không
if getent group "$GROUP_NAME" > /dev/null 2>&1; then
    echo "Group '$GROUP_NAME' already exists."
else
    echo "Group '$GROUP_NAME' does not exist. Creating..."

    ### Tạo group mới
    sudo groupadd "$GROUP_NAME"

    if [ $? -eq 0 ]; then
        echo "Group '$GROUP_NAME' created successfully."
    else
        echo "Failed to create group '$GROUP_NAME'."
        exit 1
    fi
fi

## Tạo tài khoản người dùng hệ thống (system user)
sudo useradd -r -g quickbite -s /bin/false quickbite
