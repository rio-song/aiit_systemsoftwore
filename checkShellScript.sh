test1=`./greatestCommonDivisor.sh 2 4`
if [ $test1 -eq 2 ]
then echo "成功"
else echo "失敗"
fi

test2=`./greatestCommonDivisor.sh 3`
if [ "$test2" = "引数には２つの自然数を設定してください。" ];
then echo $test2
else echo "失敗"
fi


test3=`./greatestCommonDivisor.sh 3 あいうえお`
if [ "$test3" = "数字を入力してください" ];
then echo $test3
else echo "失敗"
fi      

