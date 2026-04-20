@echo off

cd /d E:\blog\blowfish

echo ========================
echo Git add...
git add .

echo ========================
echo Git commit...
git commit -m "update blog"

echo ========================
echo Git push...
git push origin main

echo ========================
echo Done
pause