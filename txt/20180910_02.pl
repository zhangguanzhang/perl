上海@新人
02:29:26 10.52.1.105 114.114.114.114 70 UDP 45777 53
02:29:26 10.52.1.105 114.114.114.114 70 UDP 45777 53
02:29:27 10.52.1.105 114.114.114.114 70 UDP 46923 53
02:29:27 10.52.1.105 114.114.114.114 70 UDP 46923 53
02:29:27 10.52.1.105 114.114.114.114 70 UDP 46923 53


请问如何将每行的第一个字符串（02:29:26）  加上昨天的日期  转换成时间戳并替换之

perl  -i -alpE 'use POSIX qw(strftime);use Date::Parse;
BEGIN{
    $date = strftime "%Y %m %d ",localtime(time-86400);
}
$_ = str2time($date.@F[0])." @F[1..$#F]"
' txt