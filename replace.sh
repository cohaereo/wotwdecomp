#echo $0 $1 $2
echo Replacing $1 with $2
sym=$2
address=$1
#echo "s/$sym/$address/g"
find -type f \( -iname "*.s" -o -type f -iname "*.cpp" \) -exec sed -i "s|$address|$sym|g" {} \;
