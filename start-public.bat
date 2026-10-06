@echo off
chcp 65001 >nul
echo ========================================================
echo 🎀 KHỞI CHẠY GAME CỜ CARO & TẠO LINK PUBLIC ONLINE 🎀
echo ========================================================
echo.

echo 1. Đang khởi động Server Game tại http://localhost:3000...
start /B node server.js

timeout /t 2 /nobreak >nul

echo 2. Đang tạo link công khai qua Cloudflare Tunnel...
echo Mọi người ở bất kỳ đâu đều có thể truy cập link bên dưới!
echo (Giữ cửa sổ này mở để link hoạt động)
echo --------------------------------------------------------
"C:\Program Files (x86)\cloudflared\cloudflared.exe" tunnel --url http://localhost:3000

pause
