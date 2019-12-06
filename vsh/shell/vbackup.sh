echo removing old backup
rm -rf bin/backup/
mkdir bin/backup/
chmod 777 bin/backup/
echo backup directory is created
cp -r src/ bin/backup/
mv bin/backup/src bin/backup/src-snap
echo src has been backed up to src-snap
#cp -r bin/backup/src-snap log/temp/
#echo src-snap has been saved to log
