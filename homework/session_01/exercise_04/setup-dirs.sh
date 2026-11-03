#!/bin/bash

## Tạo thư mục làm việc của dự án tại đường dẫn: /opt/quickbite/user-service.
sudo mkdir -p opt/quickbite/user-service

## Sử dụng lệnh chown để thay đổi chủ sở hữu của thư mục /opt/quickbite (và toàn bộ thư mục con bên trong) cho user quickbite và group quickbite.
sudo chown -R quickbite:quickbite /opt/quickbite

## Đặt quyền hạn truy cập tập tin cho thư mục /opt/quickbite là 750
sudo chmod -R 750 /opt/quickbite

## Giải thích quyền 750:

### - Chủ sở hữu (quickbite user): Có quyền Đọc, Ghi, Thực thi (7 -> rwx)

### - Nhóm sở hữu (quickbite group): Có quyền Đọc và Thực thi (5 -> r-x)

### - Những người dùng khác (others): Hoàn toàn không có quyền truy cập (0 -> ---)
