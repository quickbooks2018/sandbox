Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))
refreshenv
Start-Process PowerShell  -Wait -ArgumentList "choco.exe install vscode golang firefox -y"

New-Item -Path C:\Users\WDAGUtilityAccount\.vscode\extensions -Type Directory
$extensions = @('golang.go','xshrim.txt-syntax')
$extensions | ForEach-Object { 
    Start-Process PowerShell -WorkingDirectory 'C:\Program Files\Microsoft VS Code\bin' -Wait -ArgumentList "./code --install-extension $_"
    }