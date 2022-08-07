
if [ $# -lt 2 ]
then
    echo "引数には２つの自然数を設定してください。"
    exit 1
fi

args1=$1
args2=$2

if [[ $args1 =~ ^[0-9].*$ ]];
then args1=$1
else
 echo "数字を入力してください"
 exit 1
fi

if [[ $args2 =~ ^[0-9].*$ ]];
then args2=$2
else
 echo "数字を入力してください"
 exit 1
fi

greatestCommonDivisor(){
if [ $2 -eq 0 ];
then
echo $1
else 
result=$(( $1 % $2))
function=`greatestCommonDivisor $2 $result`
echo $function
fi
}

greatestCommonDivisor $args1 $args2


