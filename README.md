# opencode-scripts

Scripts para inicializar e gerenciar o [opencode](https://opencode.ai) no Windows com WSL.

## Pré-requisitos

- Windows com WSL (Ubuntu) instalado
- opencode instalado no WSL em `~/.opencode/bin/opencode`
- Windows Terminal (`wt`) instalado

> **Instalação inicial do opencode no WSL (apenas uma vez):**
> ```bash
> curl -fsSL https://opencode.ai/install | bash
> ```

## Scripts

### `iniciar-opencode.ps1`

Abre uma nova janela do Windows Terminal e inicia o opencode no WSL (Ubuntu), já posicionado em `C:\Users\pavan`.

#### Uso básico

Dentro da pasta do repositório:

```powershell
.\iniciar-opencode.ps1
```

De qualquer diretório, com caminho absoluto:

```powershell
powershell -ExecutionPolicy Bypass -File "C:\Users\pavan\opencode-scripts\iniciar-opencode.ps1"
```

#### Múltiplas instâncias

Cada execução do script abre uma janela independente do Windows Terminal com o opencode rodando. É possível rodar o script quantas vezes quiser para lançar instâncias simultâneas.

#### Sessões recorrentes

Para usar em uma nova sessão do Warp (ou qualquer terminal PowerShell), basta rodar o script novamente — não é necessário reinstalar ou reconfigurar nada, pois o opencode já fica instalado no WSL de forma persistente.

#### Atalho opcional: alias no perfil do PowerShell

Para lançar o opencode digitando apenas `opencode` em qualquer terminal PowerShell, adicione ao seu `$PROFILE`:

```powershell
function opencode { powershell -ExecutionPolicy Bypass -File "C:\Users\pavan\opencode-scripts\iniciar-opencode.ps1" }
```

## Versão validada

- opencode `1.17.3`
- WSL Ubuntu
- Windows Terminal
- PowerShell 5.1 / pwsh
