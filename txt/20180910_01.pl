The first line.
The second line.
9
8
7
6
5
4
3
2
1
The End line.

逆序second line到End line之间的文本
perl -e 'while(<>){
    (/The second line./../The End line./)?unshift @lines,$_:push @line,$_
}
($lines[0], $Lines[-1]) = ($lines[-1], $lines[0]);
print @line,@lines
' txt
