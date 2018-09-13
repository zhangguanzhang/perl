[root@k8s-m1 txt_dir]# cat txt
85  92  78  94  88
89  90  75  90  86
84  88  90  92  84
求每列最大值和平均值
[root@k8s-m1 txt_dir]# perl -anE '$i=0;map{$a[$i]=$a[$i]>$F[$i]?$a[$i]:$F[$i];$i++}@F;END{say "@a"}' txt
89 92 90 94 88
[root@k8s-m1 txt_dir]# perl -anE '$i=0;map{$a[$i]+=$F[$i];$i++}@F;END{map{print $_/$.." "}@a;say}' txt
86 90 81 92 86
#最小值因为perl不会像awk那样空值和变量大小比较的时候置0所以这个思路不行
