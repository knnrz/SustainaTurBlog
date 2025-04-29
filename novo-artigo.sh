#!/bin/bash

# === Sustaina Trip | Gerador Interativo de Artigos ===

echo "📄 Nome do arquivo (sem .html):"
read nome

echo "🧠 Meta Título:"
read meta_title

echo "🔍 Meta Descrição:"
read meta_desc

echo "📝 Título do Artigo (H2):"
read titulo

echo "✍️ Escreva o conteúdo principal (pode usar \\n para quebrar linhas):"
read conteudo_raw

# Processa o conteúdo com quebras de linha reais
conteudo=$(echo -e "$conteudo_raw")

# Caminho
arquivo="./artigos/${nome}.html"

# Cria pasta se não existir
mkdir -p ./artigos

# Cria arquivo com conteúdo personalizado
cat <<EOF > "$arquivo"
<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>${meta_title}</title>
  <meta name="description" content="${meta_desc}">
  <link rel="stylesheet" href="../css/style.css">
  <script src="../js/script.js" defer></script>
</head>
<body>

<header>
  <div class="container">
    <h1><a href="../index.html">Sustaina Trip Turismo</a></h1>
    <nav>
      <ul>
        <li><a href="../index.html">Home</a></li>
        <li><a href="../pages/blog.html">Blog</a></li>
        <li><a href="../pages/contato.html">Contato</a></li>
      </ul>
    </nav>
  </div>
</header>

<main class="blog-post">
  <a href="../pages/blog.html" class="btn-small">← Voltar para o Blog</a>

  <article>
    <h2>${titulo}</h2>
    <p>${conteudo}</p>
  </article>

  <aside class="sidebar">
    <h4>Conteúdos Extras</h4>
    <ul>
      <li><a href=\"#\">Dica Sustentável</a></li>
      <li><a href=\"#\">Promoções e Novidades</a></li>
    </ul>
  </aside>
</main>

<footer>
  <div class="container">
    <p>&copy; 2025 Sustainatrip Turismo. Todos os direitos reservados.</p>
  </div>
</footer>

<button id="back-to-top" title="Voltar ao topo">⬆️</button>

</body>
</html>
EOF

echo "✅ Artigo criado com sucesso: $arquivo"

