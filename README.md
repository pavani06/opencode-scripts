# opencode-scripts

Scripts para inicializar e gerenciar o [opencode](https://opencode.ai) no Windows com WSL.

## Pré-requisitos

- Windows com WSL (Ubuntu) instalado
- opencode instalado no WSL em `~/.opencode/bin/opencode`
- Windows Terminal (`wt`) instalado

> Para instalar o opencode no WSL pela primeira vez:
> ```bash
> curl -fsSL https://opencode.ai/install | bash
> ```

## Scripts

### `iniciar-opencode.ps1`

Abre uma nova janela do Windows Terminal e inicia o opencode no WSL (Ubuntu), já posicionado em `C:\Users\pavan`.

**Uso:**

```powershell
.\iniciar-opencode.ps1
```

Ou diretamente no PowerShell sem restrições de política:

```powershell
powershell -ExecutionPolicy Bypass -File .\iniciar-opencode.ps1
```

## Versão validada

- opencode `1.17.3`
- WSL Ubuntu
- Windows Terminal
