# Robot Frontend Automation

## Instalar o venv

```bash
sudo apt install python3.12-venv
```

## Ativar o venv

```bash
source venv/bin/activate
```

## Instalar o pip

```bash
sudo apt install python3-pip
```

## Instale as dependências

```bash
pip install -r requirements.txt
```

## Listar as dependências instaladas

```bash
pip list
```

## Instalar dependências do playwright

```bash
sudo npx playwright install-deps
```

## Inicialize o Browser Library com o Playwright

```bash
rfbrowser init
```

## Verificar o caminho do python3 instalada

```bash
which python3
```

## Executar todos testes

```bash
robot --outputdir reports --loglevel TRACE:INFO src/tests
```

## Extensões para o vscode

[Robot Framework Language Server](https://marketplace.visualstudio.com/items?itemName=robocorp.robotframework-lsp)
