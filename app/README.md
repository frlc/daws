# Camp — Força e Condicionamento para Muay Thai

Ciclo de 8 dias com check por exercício. Funciona offline e salva o progresso no aparelho.

## Publicar no GitHub Pages

1. Crie uma conta em github.com (se ainda não tiver).
2. **New repository** → nome `camp` → marque **Public** → **Create repository**.
3. Na tela do repositório, clique em **uploading an existing file**.
4. Arraste **todos** os arquivos desta pasta de uma vez:
   - `index.html`
   - `manifest.webmanifest`
   - `sw.js`
   - `icon-192.png`
   - `icon-512.png`
   - `icon-maskable-512.png`
   - `apple-touch-icon.png`
5. Clique em **Commit changes**.
6. Vá em **Settings → Pages**. Em *Source*, escolha **Deploy from a branch**;
   em *Branch*, escolha **main** e a pasta **/ (root)**. Clique em **Save**.
7. Espere de 1 a 2 minutos e recarregue a página de Settings → Pages.
   O endereço aparece no topo, no formato:

   `https://SEU-USUARIO.github.io/camp/`

## Instalar no celular

Abra esse endereço no Chrome do Xiaomi. Vai aparecer um aviso
**"Instalar app"** na parte de baixo — ou pelo menu ⋮ → **Instalar app**.

Se o MIUI bloquear a criação do ícone, libere em
**Ajustes → Apps → Gerenciar apps → Chrome → Outras permissões →
Criar atalhos na tela inicial**.

## Observações

- Os arquivos precisam ficar todos na **raiz** do repositório, não dentro de uma subpasta.
- O progresso fica salvo no navegador do aparelho. Para trocar de celular,
  use **⋯ → Gerar backup**, copie o texto e cole em **Restaurar** no aparelho novo.
- Para atualizar o treino depois, edite o `index.html` no GitHub e mude
  `camp-v1` para `camp-v2` no `sw.js` — isso força o app a baixar a versão nova.
