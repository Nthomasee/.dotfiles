#!/bin/sh

link="$1"
if [ -z "$link" ]; then
    echo "Use: ./dw.sh \"URL\""
    exit 1
fi

# Более надежное извлечение расширения
filename=$(basename "$link")
extension="${filename##*.}"
basename="${filename%.*}"

echo "URL: $link"
echo "Extension: $extension"
echo "\n\nПожалуйста введите название файла: "
read -r newname

if [ -z "$newname" ]; then
    newname="$basename"
fi

RED='\033[0;31m'
NC='\033[0m'
GREEN='\033[0;32m'

output_file="${newname}.${extension}"

if curl -f -o "$output_file" "$link"; then
    if [ -f "$output_file" ] && [ -s "$output_file" ]; then
        printf "\n${GREEN}Successfully downloaded:${NC} %s\n" "$output_file"
    else
        printf "${RED}File was not created or is empty${NC}\n"
        exit 1
    fi
else
    printf "${RED}CURL ERROR${NC}\n"
    exit 1
fi
