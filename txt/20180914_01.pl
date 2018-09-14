           <div class="col-item" >
                <h2 style="color:pink" title="grep正则">grep正则</h2>
                <ul>
                    <li><a href="c/grep19.php">\ 转义字符</a></li>
                    <li><a href="c/grep20.php">^ 匹配以什么开始</a></li>
                    <li><a href="c/grep21.php">$ 匹配以什么结尾</a></li>
                    <li><a href="c/grep22.php">\< 从匹配正则表达式的行开始</a></li>
                    <li><a href="c/grep23.php">\> 到匹配正则表达式的行结束</a></li>
                    <li><a href="c/grep24.php">[ ] 匹配单个字符</a></li>
                    <li><a href="c/grep25.php">[-] 匹配范围</a></li>
                    <li><a href="c/grep26.php">. 匹配所有单个字符</a></li>
                    <li><a href="c/grep27.php">* 匹配任意字符</a></li>
                </ul>
            </div>
-----------------------
提取上面的c/grep*.php并去重打印
[root@k8s-m1 txt_dir]# perl -lne '
/(?<=href=")[^"]+/;$data{$&} ||=1 if $&;
END{map{print $_}(keys %data)}' txt
c/grep24.php
c/grep22.php
c/grep23.php
c/grep25.php
c/grep27.php
c/grep20.php
c/grep21.php
c/grep26.php
c/grep19.php
