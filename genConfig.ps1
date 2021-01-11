$config = @"
<Configuration>
<MappedFolders>
  <MappedFolder>
    <HostFolder>$PWD\Scripts</HostFolder>
    <ReadOnly>true</ReadOnly>
  </MappedFolder>
</MappedFolders>
<LogonCommand>
  <Command>C:\Windows\System32\WindowsPowerShell\v1.0\powershell.exe -sta -WindowStyle Hidden -noprofile -executionpolicy unrestricted -file "C:\Users\WDAGUtilityAccount\Desktop\Scripts\install.ps1"</Command>
</LogonCommand>
</Configuration>
"@  | Out-File $PWD\MyBox.wsb

$config
Write-Host "Config is generated"
