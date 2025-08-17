Sumário = {
    > Ao lidar com banco de dados ficou claro (pra mim) que o problema não é a lógica(como fazer x coisa)
    muito menos a linguagem (SQL, M ou VBa),
    mas sim o ambiente no qual estou, como minhas opções tabelas (ODBC - RMS7) para produzir mais ferramentas
    trabalhando.

    > Encontrei informações que me ajudassem a trabalhar melhor, conhecer meu espaço, eu diria.
        {https://pt.scribd.com/document/378514406/Tabelas-RMS}

    > Baixei, traduzi e listei
        Depois, salvei em JSON (json_odbc.json)


    (23/06/25)
        - encontrei um pdf das tabelas rms
        - instalei oracle XE local pra praticar
        - baixei varios db com formatos de dados diferentes! (marquei com estrela aqui no git)

    (10/07/58)
        - Terminei meu primeiro livro de SQL (Peguei um intermedíario já que os simples são muito monótonos)
            //SQL Guia Prático - O'REILLY 
        - Já consigo ler consultas bem mais fácil e escrever também... 
            // É trabalhoso mas temos COPILOTOS (copilot) hoje e dia, acredito que se tivermos dominio de alguns 
            // algoritmos é muito viável usa-la, quando uso estudo o código depois até garanti que entendi! 
        - Estudando alguns algoritmos como algoritmos Binários (LOG2), Ordenação, etc...
        - Me inscrevi na faculdade SCIENCE COMPUTER (ANHEMBI MORUMBI)
    /* E, Novamente, há de se repetir que, coisas boas há de vim! */
        - Comprei um livro sobre Expressões Regulares, sempre me chamou muita atenção!! 
}

(10/08/25)
Atualmente estou estudando java e JDBC, aprendi muito sobre dados e quando acho que sei algo descubro que posso saber ainda mais,,, (:
Simplismnte facinado pelo InteliJ e aprendendo mais sobre power shell.
Vou deixar um sqlp pra buscar depois ^^ (daqui um tempo apago)

<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Consulta de Dados</title>
  <style>
    body {
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
      background-color: #ecf0f1;
      color: #34495e;
      margin: 0;
      display: flex;
      flex-direction: column;
      min-height: 100vh;
    }

    /* Cabeçalho flat */
    header {
      background-color: #1abc9c;
      color: white;
      padding: 20px 30px;
      text-align: center;
      font-size: 24px;
      font-weight: bold;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    /* Subtítulo */
    #subtitle {
      text-align: center;
      font-style: italic;
      margin-top: 10px;
      margin-bottom: 50px;
      color: #2c3e50;
    }

    /* Modal do upload */
    #uploadDiv {
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(0,0,0,0.5);
      display: flex;
      justify-content: center;
      align-items: center;
      z-index: 1000;
    }

    #uploadDiv div {
      background-color: white;
      padding: 30px 50px;
      border-radius: 12px;
      box-shadow: 0 4px 15px rgba(0,0,0,0.3);
      text-align: center;
    }

    .file-upload-label {
      display: inline-block;
      background-color: #1abc9c;
      color: white;
      padding: 15px 30px;
      font-size: 16px;
      border-radius: 8px;
      cursor: pointer;
      transition: 0.3s;
      box-shadow: 0 2px 5px rgba(0,0,0,0.2);
    }

    .file-upload-label:hover {
      background-color: #16a085;
    }

    .file-upload input[type="file"] {
      display: none !important;
    }

    table {
      width: calc(100% - 60px);
      margin: 0 auto 20px auto;
      border-collapse: collapse;
      background-color: white;
      box-shadow: 0 2px 5px rgba(0,0,0,0.1);
    }

    th, td {
      padding: 10px 15px;
      text-align: left;
      border-bottom: 1px solid #95a5a6;
    }

    th {
      background-color: #1abc9c;
      color: white;
      position: relative;
    }

    tr:nth-child(even) {
      background-color: #f9f9f9;
    }

    tr:hover {
      background-color: #e0e0e0;
      color: #34495e;
      transition: 0.3s;
    }

    .sort-btn {
      background-color: #16a085;
      color: white;
      border: none;
      padding: 5px 10px;
      border-radius: 5px;
      cursor: pointer;
      margin-left: 5px;
      transition: 0.3s;
      font-size: 12px;
    }

    .sort-btn:hover {
      background-color: #138f75;
    }

    footer {
      text-align: center;
      font-size: 12px;
      font-style: italic;
      color: #7f8c8d;
      margin-top: auto;
      padding: 10px 0;
      background-color: #ecf0f1;
    }
  </style>
</head>
<body>
<header>Consulta de Dados</header>
<div id="subtitle"></div>

<!-- Modal de upload -->
<div class="file-upload" id="uploadDiv">
  <div>
    <label class="file-upload-label" for="csvFile">Selecionar arquivo CSV</label>
    <input type="file" id="csvFile" accept=".csv">
  </div>
</div>

<table id="tabela">
  <thead></thead>
  <tbody></tbody>
</table>

<footer>Consulta realizada por: Richard</footer>

<script>
  // Subtítulo com data e hora atual
  const subtitleDiv = document.getElementById('subtitle');
  const now = new Date();
  subtitleDiv.textContent = now.toLocaleString();

  let sortPriority = [];

  function processCSV(text) {
    const lines = text.trim().split('\n');
    if (lines.length === 0) return;

    // Esconde modal após carregar CSV
    document.getElementById('uploadDiv').style.display = 'none';

    const headers = lines[0].split(',').map(h => h.trim());
    const tbody = document.querySelector('#tabela tbody');
    const thead = document.querySelector('#tabela thead');

    thead.innerHTML = '';
    const trHead = document.createElement('tr');
    headers.forEach((h, index) => {
      const th = document.createElement('th');
      th.textContent = h;

      const btn = document.createElement('button');
      btn.textContent = '↑↓';
      btn.className = 'sort-btn';
      btn.addEventListener('click', () => sortColumnDynamic(index));
      th.appendChild(btn);

      trHead.appendChild(th);
    });
    thead.appendChild(trHead);

    tbody.innerHTML = '';
    lines.slice(1).forEach(line => {
      if (!line.trim()) return;
      const cols = line.split(',').map(c => c.trim());
      const tr = document.createElement('tr');
      cols.forEach(col => {
        const td = document.createElement('td');
        td.textContent = col;
        tr.appendChild(td);
      });
      tbody.appendChild(tr);
    });
  }

  function sortColumnDynamic(colIndex) {
    const table = document.getElementById('tabela');
    const tbody = table.tBodies[0];
    const rows = Array.from(tbody.rows);

    const existing = sortPriority.find(s => s.col === colIndex);
    if (existing) {
      existing.asc = !existing.asc;
      sortPriority = [existing, ...sortPriority.filter(s => s.col !== colIndex)];
    } else {
      sortPriority = [{col: colIndex, asc: true}, ...sortPriority];
    }

    rows.sort((a, b) => {
      for (let s of sortPriority) {
        let valA = a.cells[s.col].textContent.trim();
        let valB = b.cells[s.col].textContent.trim();

        if (!isNaN(parseFloat(valA)) && !isNaN(parseFloat(valB))) {
          valA = parseFloat(valA);
          valB = parseFloat(valB);
          if (valA !== valB) return s.asc ? valA - valB : valB - valA;
        } else {
          const cmp = valA.localeCompare(valB);
          if (cmp !== 0) return s.asc ? cmp : -cmp;
        }
      }
      return 0;
    });

    rows.forEach(r => tbody.appendChild(r));
  }

  fetch('query.csv')
          .then(response => {
            if (!response.ok) throw new Error('Arquivo não encontrado');
            return response.text();
          })
          .then(text => processCSV(text))
          .catch(err => console.log('Não foi possível carregar query.csv, use o botão.'));

  document.getElementById('csvFile').addEventListener('change', function(e) {
    const file = e.target.files[0];
    if (!file) return;
    const reader = new FileReader();
    reader.onload = function(event) {
      processCSV(event.target.result);
    };
    reader.readAsText(file);
  });
</script>
</body>
</html>



