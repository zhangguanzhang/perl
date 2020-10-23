$ cat txt
name=a||func=foo1||age=111
name=b||func=foo2||addr=eijing||age=22
name=c||age=33||func=foo3

$ perl -F'\|\|'  -lane '%a=map{$_=~/func=|age=/?($_=>1):()}@F;print join qq[ ], sort keys %a' txt
age=111 func=foo1
age=22 func=foo2
age=33 func=foo3
