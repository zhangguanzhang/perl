perl -anE '
BEGIN{
  ($db_file, $log) = @ARGV[0,1];
}
if($ARGV eq $db_file){
  $ip_db{substr($F[0],0,length($F[0])-2)}=$F[-2];
}else{
  @log_ip = $_ =~ /(?:src_ip:\s?|client_ip:\s?)((?:\d{1,3}\.){3}\d{1,3})/;
  if(@log_ip){
    $ip = @log_ip[0];
    @log_ip[0] =~ /(.*?).\d{1,3}$/;
    $ip_db{$1} ||= 'null';
    $all_ip{$ip}++;
  }
}
END{
  @user_ip = keys %all_ip;
  $sum_num = @user_ip;
  for(@user_ip){
    /(.*?).\d{1,3}$/;
    $result{ $ip_db{$1} }++;
  }
  foreach $key(keys %result){
    printf "%s %.2f%\n",$key,$result{$key}/$sum_num*100
  }
}' ipdb_cn.txt flowdata.log
