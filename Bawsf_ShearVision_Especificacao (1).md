# Bawsf ShearVision — Especificação Técnica

**Versão do documento:** referente à v1.0.0 (primeira versão estável)

## 1. Visão geral

Software desktop para Windows, de uso interno em trabalhos de inspeção (shearografia e outras imagens de inspeção visual de dutos/estruturas), que permite comparar, avaliar e selecionar as melhores imagens adquiridas em campo, organizadas por local de inspeção → estrutura → seção/ensaio → ângulo/shear (SH/SV). Inclui também um módulo de visualização 3D da estrutura inspecionada (duto ou chapa), navegável por clique, associando regiões da estrutura às pastas de imagens correspondentes.

O sistema não substitui nem se integra ao software de aquisição já utilizado pela empresa; ele opera **depois** da aquisição, sobre pastas de imagens já geradas, sem alterar os arquivos originais.

## 2. Necessidade que originou o projeto

Em um trabalho de inspeção são adquiridas diversas imagens por área/seção de uma estrutura (ex.: um duto), muitas delas parecidas entre si (mesma área, ângulos ou shears diferentes — SH e SV). O processo manual de abrir pasta por pasta no Explorer, comparar visualmente e decidir quais manter é lento e pouco padronizado. O objetivo é:

- Facilitar a **comparação lado a lado** entre imagens de uma ou várias pastas simultaneamente.
- Permitir **avaliar/classificar** essas imagens (sistema de estrelas 0–5).
- Ter uma **navegação simplificada** pela estrutura de pastas da inspeção, com seleção múltipla.
- **Selecionar e reunir** as melhores imagens num único lugar, prontas para relatório/entrega.
- Ter uma **visualização 3D** da estrutura física inspecionada (duto reto, com curvas, ou chapa), navegável por clique, associando cada região a uma ou mais pastas de imagens — permitindo tanto configurar essas associações, quanto clicar numa região do 3D para já abrir as imagens daquele ponto.

## 3. Estrutura de dados de origem (pastas)

O sistema assume uma hierarquia de pastas já existente, criada pelo software de aquisição, tipicamente no formato:

```
Local de Inspeção (Place/Inspection)/
├── Estrutura (ex.: Lona 1, Tubo 3)/
│   ├── Seção/Ensaio (ex.: Indução_0°, Pressão_180°)/
│   │   ├── A0°/
│   │   │   ├── SH/
│   │   │   └── SV/
│   │   ├── B0°/ ...
```

O software trata a raiz do "Local de Inspeção" como o ponto de entrada de cada projeto de trabalho, e é também o nível em que a estrutura 3D e os dados portáveis (avaliações + configuração 3D) são associados.

## 4. Requisitos funcionais

### 4.1 Navegação de pastas
- Árvore lateral (estilo Explorer, mas dedicada) mostrando toda a hierarquia da pasta raiz selecionada, com expansão/colapso persistente por sessão.
- **Seleção múltipla de pastas**: clique simples seleciona uma pasta (substituindo a seleção anterior); `Ctrl+clique` adiciona/remove pastas da seleção atual. Todas as pastas selecionadas têm suas imagens combinadas na grade (sem duplicar arquivos repetidos entre pastas).
- A última pasta raiz utilizada é lembrada entre sessões (persistida localmente) e recarregada automaticamente ao abrir o programa — incluindo a estrutura 3D associada, se houver.
- Largura da árvore lateral é ajustável pelo usuário (divisor arrastável).
- Opção **"Incluir subpastas"**: quando ativada, a grade/comparação passa a mostrar também as imagens de todas as subpastas das pastas selecionadas (não só do nível clicado), permitindo comparação entre pastas diferentes.

### 4.2 Suporte a imagens
- Formato principal: **.bmp**.
- Miniaturas geradas em baixa resolução para exibição rápida na grade.
- Imagem em **resolução original** carregada sob demanda (lazy) ao entrar em modo de comparação, com tolerância a arquivo ausente/corrompido (retorna nulo sem quebrar a interface).
- Carregamento de imagens executado em **thread de segundo plano** (assíncrono, cancelável), com indicador visual de carregamento — evita travamento da interface ao lidar com pastas com muitas imagens pesadas (GBs de BMPs), especialmente relevante com "Incluir subpastas" ativado.

### 4.3 Grade de imagens (modo padrão)
- Exibição em grade (miniaturas) de todas as imagens das pastas selecionadas.
- Cada imagem tem: nome do arquivo, avaliação por estrelas (0–5, clicável), e uma marcação de seleção.
- Clicar em qualquer parte do cartão da imagem alterna a seleção; clicar na caixinha de seleção ou nas estrelas não interfere um no outro.

### 4.4 Modo de comparação
- Acessível a qualquer momento (não exige imagens pré-selecionadas).
- Layout em grade que se adapta automaticamente ao número de imagens selecionadas e à proporção média delas, buscando o maior tamanho de exibição possível.
- Filme de miniaturas ("filmstrip") na parte inferior, com todas as imagens carregadas, permitindo adicionar/remover da seleção sem sair do modo de comparação.
- Estrelas exibidas e editáveis tanto no filme de miniaturas quanto nas imagens grandes.
- Zoom por roda do mouse, independente por imagem.

### 4.5 Filtros de imagem
- Ajuste de brilho e contraste (sliders), com pré-visualização em tempo real.
- Filtro de nitidez (realce de bordas), com recálculo adiado até soltar o mouse quando ativo (desempenho).
- Painel de filtros mostrado/ocultado por botão dedicado, sem sair do modo comparação.
- **Nunca sobrescreve o arquivo original** — "Salvar como nova imagem" grava um arquivo novo (`_filtrada`, com sufixo numérico em caso de nome repetido), disponível imediatamente na grade/filme.

### 4.6 Avaliação (estrelas) e persistência
- Avaliação de 0 a 5 estrelas por imagem, clicável na grade, comparação e filme.
- Persistida em banco de dados local (SQLite) e em arquivo portátil (ver 4.9), associada ao caminho do arquivo.
- Botão **"Limpar notas"**: remove permanentemente todas as avaliações da pasta raiz atual (e subpastas), mediante confirmação explícita (ação irreversível).

### 4.7 Exportação das melhores imagens
- Botão "Exportar melhores" abre uma janela para escolher: (a) nota mínima desejada (1–5 estrelas) e (b) **escopo da exportação** — apenas as pastas atualmente carregadas na grade, ou toda a raiz da inspeção (todas as subpastas).
- Copia (nunca move) os arquivos que atendem ao critério para uma subpasta **`Selecionadas`**, criada na **raiz** do local de inspeção.
- Nome de cada arquivo copiado inclui a cadeia de subpastas de origem (relativa à raiz) e a nota, com limite de 70 caracteres, sanitização de caracteres inválidos e tratamento de duplicados via sufixo numérico.

### 4.8 Visualização 3D

**Catálogo de formas paramétricas** (definidas por raiz de inspeção — uma estrutura 3D por local de inspeção):
- Duto reto (diâmetro em polegadas, comprimento em cm).
- Curva de 90° à esquerda (diâmetro, trecho reto inicial, raio da curva, trecho reto final).
- Curva de 90° à direita (mesmos parâmetros, espelhado).
- Dupla curva em formato de **U** (duas curvas de 90° para o mesmo lado), com trechos antes, meio e depois.
- Chapa retangular (largura, altura, espessura).
- Ângulo de curva sempre fixo em 90°.

**Geração da geometria**: cálculo 100% analítico (trigonometria direta sobre o caminho — sem uso de spline/Frenet frames). O caminho é dividido em um número configurável de **seções** (longitudinais) × **ângulos** (radiais, igualmente espaçados ao redor da circunferência), formando uma grade de áreas clicáveis — para chapa, o equivalente é linhas × colunas.

**Renderização**: Three.js dentro de um `WebView2` embutido na janela WPF, com câmera livre (`TrackballControls`, rotação em todos os eixos), zoom, e reset de visualização.

**Dois modos de exibição**:
- **Modo Configuração/Edição**: ocupa a tela inteira; usado para cadastrar/editar a estrutura e associar áreas a pastas. Desabilita os demais controles do software enquanto ativo.
- **Modo Exibição**: tela dividida (grade/comparação de um lado, 3D do outro, com divisor ajustável); usado no dia a dia para navegar entre estrutura física e imagens.

**Associação de áreas a pastas**:
- Cada área (seção × ângulo) pode ser associada a **uma ou mais pastas** (ex.: SH e SV de uma mesma posição), não apenas uma.
- No modo de configuração, duplo clique numa área abre o diálogo de associação (permite adicionar, remover pastas associadas, ou remover a associação inteira).
- No modo de exibição, clique simples numa área seleciona automaticamente na árvore lateral todas as pastas associadas àquela área, carregando as imagens correspondentes na grade — e a operação inversa também ocorre: selecionar pastas na árvore destaca a(s) área(s) 3D correspondente(s).
- Áreas já associadas recebem destaque de cor diferenciado no modelo 3D.

**Personalização visual do 3D**: menu único "Aparência" com seletores de cor para o duto/chapa, fundo, área associada, linha divisória e área selecionada; botão de restaurar cores padrão; acompanha automaticamente o tema claro/escuro do restante do aplicativo.

**Botão "Redesenhar duto"**: permite apagar a estrutura 3D e as associações da raiz atual e cadastrar uma nova do zero, com confirmação explícita.

### 4.9 Persistência portátil unificada
- **Arquivo único `data_shearview.json`**, gravado na raiz de cada local de inspeção, contendo tanto as avaliações (notas) quanto a configuração 3D completa (forma, parâmetros, número de seções/ângulos, e todas as associações de área a pastas).
- Caminhos gravados de forma **relativa** à raiz, para sobreviver a cópias/movimentações da pasta inteira entre computadores.
- Ao abrir uma raiz, o conteúdo do arquivo **sobrescreve** o banco local (o arquivo "manda"), permitindo que outra pessoa abra a mesma pasta em outro computador e já veja avaliações e estrutura 3D configuradas — o arquivo é também regravado nesse momento com o estado mesclado, garantindo que dados que só existissem no banco local (de uma sessão anterior) não se percam.
- Atualizado automaticamente a cada nota dada ou associação alterada.

## 5. Requisitos não funcionais
- **Aplicação local-first**: funciona inteiramente offline; dados sensíveis de clientes/inspeções não saem da máquina.
- Desempenho adequado para pastas com centenas de imagens pesadas, via carregamento assíncrono cancelável e miniaturas reduzidas.
- Interface com **tema claro e escuro**, alternável em tempo real (inclusive a barra de título nativa do Windows e o fundo do módulo 3D acompanham o tema).

## 6. Arquitetura e stack técnica

| Camada | Tecnologia | Motivo |
|---|---|---|
| Aplicação principal | C# / WPF sobre .NET (moderno) | Desempenho nativo para manipulação de arquivos/imagens locais em lote |
| Interface | XAML + code-behind organizado em `partial class` por área funcional | Padrão nativo do WPF; divisão em arquivos evita uma única classe "faz-tudo" |
| Persistência local | SQLite via `Microsoft.Data.Sqlite` | Leve, local, sem servidor |
| Persistência portátil | Arquivo único `data_shearview.json` (texto simples) por raiz de inspeção | Avaliações e configuração 3D "viajam" junto com a pasta |
| Manipulação de imagem/filtros | `System.Drawing.Common` (Bitmap, LockBits) | Operações pixel a pixel (brilho, contraste, convolução de nitidez) |
| Módulo 3D | HTML/JS + Three.js, hospedado via `Microsoft.Web.WebView2` na mesma janela WPF, comunicação bidirecional via `PostWebMessageAsJson`/`WebMessageReceived` | Ecossistema maduro para cenas 3D interativas, sem o custo de rodar a aplicação inteira em Electron |
| Build do módulo 3D | Node.js + Vite (`visualizacao3d/`), servido ao WebView2 via `SetVirtualHostNameToFolderMapping` (host virtual local, evita restrições de `file://` a módulos ES) | Empacotador leve; artefatos estáticos locais, sem servidor real |
| Interop nativo do Windows | P/Invoke (`dwmapi.dll`, `user32.dll`) isolado em serviço próprio (`TemaNativoService`) | Pintura da barra de título nativa conforme tema ativo |
| Controle de versão | Git (local + repositório remoto privado recomendado) | Histórico de alterações, tags por versão estável |

### Decisões de arquitetura relevantes
- Nenhuma imagem original é modificada; toda operação destrutiva (filtro) gera um novo arquivo.
- Geometria do 3D calculada analiticamente (não via spline), por robustez em casos-limite de trechos retos e transições reto↔curva.
- Código organizado em `partial class MainWindow` dividida por assunto (`MainWindow.ArvorePastas.cs`, `MainWindow.Grade.cs`, `MainWindow.Comparacao.cs`, `MainWindow.Filtros.cs`, `MainWindow.Exportar.cs`, `MainWindow.Visualizacao3D.cs`, `MainWindow.Tema.cs`), e responsabilidades transversais (interop nativo, comunicação com o WebView2) extraídas para serviços dedicados (`TemaNativoService`, `Ponte3DService`), reduzindo o acoplamento e o tamanho de cada arquivo individual.
- Modelos de dados (`ImagemItem`, `PastaNode`) isolados em `Models/`/`Services/`, fora do code-behind de tela.

## 7. Modelo de dados (estado atual)

**Tabelas SQLite:** `Avaliacoes` (caminho → nota), `Configuracoes` (última pasta), `Estruturas3D` (forma/parâmetros por raiz), `Associacoes3D` (seção/ângulo → uma ou mais pastas, por raiz).

**Arquivo `data_shearview.json` (por raiz de inspeção)** — estrutura conceitual:
```json
{
  "avaliacoes": { "Ensaio 1/SV/Phase_0019.bmp": 4 },
  "tipoForma": "CurvaEsquerda",
  "parametrosJson": "{...}",
  "numSecoes": 10,
  "numAngulos": 4,
  "associacoes3D": { "3_90": "Indução_0°/A0°/SH|Indução_0°/A0°/SV" }
}
```

## 8. Fora de escopo (por ora)
- Reconstrução 3D fiel a partir de fotos (fotogrametria) — o 3D é um modelo paramétrico simplificado, não uma reconstrução da estrutura real.
- Colaboração multiusuário em tempo real / nuvem — arquitetura single-user, local (a portabilidade é via cópia manual da pasta, não sincronização).
- Suporte a outros formatos de imagem além de BMP.
- Ângulo de curva configurável no 3D (fixo em 90° por design).

## 9. Estado atual da implementação

**Concluído:**
- Árvore de navegação com seleção múltipla e opção de incluir subpastas.
- Grade com avaliação, carregamento assíncrono cancelável.
- Modo de comparação com filme de miniaturas, zoom e filtros não destrutivos.
- Exportação por nota mínima com escolha de escopo (pasta atual ou raiz completa).
- Persistência unificada (SQLite local + arquivo portátil único por raiz).
- Módulo de Visualização 3D completo: catálogo de 5 formas, geometria analítica, associação múltipla área↔pastas, modos de exibição/edição, personalização visual, sincronização bidirecional com a árvore de pastas.
- Tema claro/escuro completo (interface, barra de título nativa, módulo 3D).
- Código reorganizado em `partial class` por assunto e serviços dedicados para interop nativo e comunicação com o WebView2.
- Testado em máquina sem Visual Studio instalado (fora do ambiente de desenvolvimento).
- Controle de versão via Git formalizado a partir desta versão (v1.0.0).
- Ícone definitivo do aplicativo (versões anteriores descartadas por não atenderem ao padrão desejado).

**Pendente:**
- Build de publicação em modo Release e empacotamento/instalador para distribuição.
- Documentação de uso para o usuário final.
