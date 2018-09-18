[root@k8s-m1 txt_dir]# cat txt
[program:risk-v2]
autostart=true
autorestart=true
stopsignal=QUIT


[program:risk-monitor]
autostart=true
autorestart=true
stopsignal=QUIT
killasgroup=true


[program:risk-listener]
autostart=true
autorestart=true


[program:risk-jxl-pull]
autostart=true
autorestart=true

注释掉不是risk-v2和risk-listener的块
[root@k8s-m1 txt_dir]# perl -pe 'unless(/\[pro.+risk(-v2|-listener)/../^$/){printf "#" unless /^$/}' txt
[program:risk-v2]
autostart=true
autorestart=true
stopsignal=QUIT


#[program:risk-monitor]
#autostart=true
#autorestart=true
#stopsignal=QUIT
#killasgroup=true


[program:risk-listener]
autostart=true
autorestart=true


#[program:risk-jxl-pull]
#autostart=true
#autorestart=true
