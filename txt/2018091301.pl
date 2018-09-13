[root@k8s-m1 txt_dir]# cat txt 
>12454p p2
aaaaaaaaaaabbbbb
>12455 p1
aaaaabbbbbbbbbbb
[root@k8s-m1 txt_dir]# cat txt2
>12454p p2
abaaaaaaaaabbbbb
>12455 p1
aacaabbbbbbbbbcb
[root@k8s-m1 txt_dir]# perl -ne '
>   ($_ =~ /^>/) and $temp=$_ or $data{$temp}=$data{$temp}?$data{$temp}.$_:$_;
> END{
>   foreach $key(keys %data){
>     print $key.$data{$key}
>   }
> }' txt txt2
>12454p p2
aaaaaaaaaaabbbbb
abaaaaaaaaabbbbb
>12455 p1
aaaaabbbbbbbbbbb
aacaabbbbbbbbbcb
