# Inicia o opencode (ja instalado) via WSL
# Uso: .\iniciar-opencode.ps1

Start-Process wt -ArgumentList "wsl.exe -d Ubuntu -- bash -ic 'cd /mnt/c/Users/pavan && ~/.opencode/bin/opencode'"
