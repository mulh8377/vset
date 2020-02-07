echo removing old backup
rm -rf bin/backup/
rm -rf bin/sh/ && echo "removing old shell scripts from bin/sh"
mkdir bin/backup/ && echo "bin/backup/ created"
mkdir bin/backup/data && echo "bin/backup/data created"
mkdir bin/sh/ && echo "bin/sh/ created"
chmod 777 bin/backup/
chmod +x bin/sh/
chmod +x bin/backup/data
cp -r src/ bin/backup/ && echo "src has been copied to bin/backup"
mv bin/backup/src bin/backup/src-snap && echo "backup has been renamed to src-snap"
mv bin/backup/data/ bin/backup/src-data/ && echo "backup/data has been renamed to src-data"
#cp -r bin/backup/src-snap log/temp/
#echo src-snap has been saved to log
cp vsh/shell/vmake/*.sh bin/sh/ && echo 'template scripts have been added to bin/sh'
cp -r doc/ bin/temp/ && echo "old documentation has been added to bin/temp"