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



________ [CONFIG POWER SHELL] ______________
system.environment]::setenv ("","","user")
new-file -path "" itemtype directory


________ [DQL CONFIGURAÇÃO PRO TERMINAL] _______

SET LINESIZE        200
SET PAGESIZE        1000
SET LONG            1000
SET LONGCHUNKSIZE   1000
SET TRIMOUT         ON
SET TRIMSPOOL       ON
SET WRAP            ON
SET TAB             OFF
SET NULL            "-"
SET COLSEP          " | "
SET HEADSEP         "="

SET AUTOCOMMIT      OFF
SET AUTOPRINT       OFF
SET AUTORECOVERY    OFF
SET AUTOTRACE       OFF
SET SERVEROUTPUT    ON
SET FEEDBACK        OFF
SET VERIFY          OFF
SET ECHO            OFF

SET SQLPROMPT       "SQL> "
SET EDITFILE        "afiedt.buf"
SET DEFINE          "&"
SET TERMOUT         ON
SET TIMING          OFF
SET TIME            OFF
SET EXITCOMMIT      ON



_____ [SPL] ______


SET PAGESIZE 0
SET LINESIZE 200
SET FEEDBACK OFF
SET VERIFY OFF
SET HEADING OFF
SET TERMOUT OFF
SET DEFINE OFF
SPOOL ON
SET SQLPROMPT '[SPL]  > '
SPOOL "SPOOL\Compile.html"

PROMPT <style>
PROMPT body {
PROMPT   font-family: 'Segoe UI', Arial, sans-serif;;
PROMPT   font-size: 16px;;
PROMPT   background-color: #ecf0f1;;
PROMPT   color: #34495e;;
PROMPT   margin: 0;;
PROMPT   padding: 0;;
PROMPT }
PROMPT
PROMPT .header {
PROMPT   text-align: center;;
PROMPT   padding: 40px 0;;
PROMPT   background-color: #1abc9c;;
PROMPT   color: #ffffff;;
PROMPT   position: relative;; /* Adicionado para posicionar o logo em relação a este contêiner */
PROMPT }
PROMPT
PROMPT .header h1 {
PROMPT   font-size: 2.5em;;
PROMPT   font-weight: 200;;
PROMPT   margin: 0;;
PROMPT }
PROMPT
PROMPT .header p {
PROMPT   font-size: 1em;;
PROMPT   font-weight: 200;;
PROMPT   margin-top: 10px;;
PROMPT   opacity: 0.9;;
PROMPT }
PROMPT
PROMPT .logo {
PROMPT   position: absolute;; /* Permite o posicionamento */
PROMPT   top: 10px;; /* Distância do topo */
PROMPT   left: 10px;; /* Distância da esquerda */
PROMPT   width: 100px;; /* Tamanho do logo */
PROMPT   height: auto;;
PROMPT }
PROMPT
PROMPT /* Estilo para o botão */
PROMPT button {
PROMPT     background-color: #1abc9c;; /* Cor do cabeçalho */
PROMPT     color: #ffffff;;
PROMPT     border: none;;
PROMPT     padding: 12px 24px;;
PROMPT     font-size: 16px;;
PROMPT     cursor: pointer;;
PROMPT     border-radius: 4px;; /* Bordas levemente arredondadas */
PROMPT     transition: background-color 0.3s ease;; /* Transição suave */
PROMPT }
PROMPT
PROMPT button:hover {
PROMPT     background-color: #16a085;; /* Cor um pouco mais escura ao passar o mouse */
PROMPT }
PROMPT
PROMPT table {
PROMPT   border-collapse: collapse;;
PROMPT   width: 90%;;
PROMPT   margin: 40px auto;;
PROMPT   background-color: #ffffff;;
PROMPT }
PROMPT
PROMPT th, td {
PROMPT   padding: 12px;;
PROMPT   text-align: left;;
PROMPT   border-bottom: 1px solid #ecf0f1;;
PROMPT }
PROMPT
PROMPT thead th {
PROMPT   background-color: #48c9b0;;
PROMPT   color: #ffffff;;
PROMPT   font-weight: 300;;
PROMPT   text-transform: uppercase;;
PROMPT }
PROMPT
PROMPT tbody tr:last-child td {
PROMPT   border-bottom: none;;
PROMPT }
PROMPT
PROMPT tbody tr:nth-child(even) {
PROMPT   background-color: #f8f9fa;;
PROMPT }
PROMPT
PROMPT tbody tr:hover {
PROMPT   background-color: #e8f8f5;;
PROMPT   cursor: pointer;;
PROMPT }
PROMPT tbody tr:active {
PROMPT   background-color: #e8f8f5;; /* Evita a cor azul padrão do navegador ao clicar */
PROMPT }
PROMPT tbody tr:hover td {
PROMPT   color: #34495e;; /* Mantém a cor do texto */
PROMPT }
PROMPT tbody tr:active td {
PROMPT   color: #34495e;; /* Mantém a cor do texto */
PROMPT }
PROMPT /* Estilos da janela modal (customizada) */
PROMPT .modal {
PROMPT     display: none;; /* Inicia oculta */
PROMPT     position: fixed;; /* Isso é crucial para que ela flutue sobre o conteúdo */
PROMPT     z-index: 1000;; /* Garante que ela esteja acima de todos os outros elementos */
PROMPT     left: 0;;
PROMPT     top: 0;;
PROMPT     width: 100%;;
PROMPT     height: 100%;;
PROMPT     background-color: rgba(0,0,0,0.4);; /* Fundo semi-transparente */
PROMPT     justify-content: center;; /* Mantemos o justify-content... */
PROMPT     align-items: center;; /* ...e o align-items, mas sem o display: flex inicial */
PROMPT }
PROMPT
PROMPT .modal-content {
PROMPT     background-color: #fefefe;;
PROMPT     padding: 20px;;
PROMPT     border: 1px solid #888;;
PROMPT     width: 80%;; /* Largura da janela */
PROMPT     max-width: 400px;;
PROMPT     text-align: center;;
PROMPT     border-radius: 8px;;
PROMPT     box-shadow: 0 4px 8px rgba(0,0,0,0.2);;
PROMPT     position: relative;;
PROMPT }
PROMPT
PROMPT .close-btn {
PROMPT     color: #aaa;;
PROMPT     font-size: 28px;;
PROMPT     font-weight: bold;;
PROMPT     position: absolute;;
PROMPT     top: 5px;;
PROMPT     right: 15px;;
PROMPT     cursor: pointer;;
PROMPT }
PROMPT
PROMPT .close-btn:hover,
PROMPT .close-btn:focus {
PROMPT     color: #000;;
PROMPT     text-decoration: none;;
PROMPT }
PROMPT </style>
PROMPT <meta charset="UTF-8">
PROMPT <title>Consulta</title>
PROMPT <link rel="icon" href="https://santaluzia.vteximg.com.br/arquivos/santa-luzia-favicon.ico" type="image/x-icon">
PROMPT <div class='header'>
PROMPT <img class="logo" src="https://s3-sa-east-1.amazonaws.com/whitelabel-ecommerces/ecommerce/images/54/large/logo.png" alt="Logo do site">
PROMPT <h1>Relatório de Dados</h1>
PROMPT <p>Gerado em:
SELECT TO_CHAR(SYSDATE, 'dd, month/yyyy') FROM DUAL;
PROMPT </p>
PROMPT </div>


SET MARKUP HTML ON


_______ [wspl] _______



SET MARKUP HTML OFF
SET HEADING ON
SET FEEDBACK ON

PROMPT </table>
PROMPT
-- Botão e janela modal
PROMPT <div style="text-align: center; margin-top: 20px;">
PROMPT   <button onclick="abrirModal()">Resumo</button>
PROMPT </div>
PROMPT <div id="modalResumo" class="modal">
PROMPT   <div class="modal-content">
PROMPT     <span class="close-btn" onclick="fecharModal()">&times;</span>
PROMPT     <h2>Conclusão</h2>
PROMPT     <div id="conteudo-resumo">
PROMPT       <p>
PROMPT       (Conteúdo não adicionado)
PROMPT       </p>
PROMPT     </div>
PROMPT   </div>
PROMPT </div>
PROMPT
-- Código do rodapé (já com o nome em itálico)
PROMPT <div class="footer">
PROMPT <p>Consulta realizada por: <i>Richard Alves</i></p>
PROMPT </div>
PROMPT </body>
PROMPT </html>
-- JavaScript para controlar a janela modal
PROMPT <script>
PROMPT   var modal = document.getElementById("modalResumo");;
PROMPT
PROMPT   function abrirModal() {;
PROMPT     modal.style.display = "flex";;
PROMPT   };
PROMPT
PROMPT   function fecharModal() {;
PROMPT     modal.style.display = "none";;
PROMPT   };
PROMPT
PROMPT   window.onclick = function(event) {;
PROMPT     if (event.target == modal) {;
PROMPT       fecharModal();;
PROMPT     };
PROMPT   };
PROMPT </script>
PROMPT
-- Tags de fechamento duplicadas no seu código original
-- Não são necessárias. Remova-as.
-- PROMPT </table>
-- PROMPT </body>
-- PROMPT </html>
SPOOL OFF
-- Restaurando o ambiente
SET TERMOUT ON
SET SQLPROMPT 'SQL > '
PROMPT [SPL.SQL] > SPOOL CREATE SUCCESS! [SPOOL\Compile.html]
PROMPT [SPL.SQL] > Para alterar os cabecalhos verifique @head.sql



_______ [head] _________

SET TERMOUT ON
PROMPT [Richard] : Ola, esse arquivo serve para lhe instruir a criar cabecalhos na tabela deste script
PROMPT [Richard] : Para alterar o cabecalho crie essa parte no html e modifique a seu criterio
PROMPT ______________________________________________________________________________
PROMPT
PROMPT <table border='1' width='90%' align='center' summary='Script output'>
PROMPT
PROMPT  <thead>
PROMPT     <tr>
PROMPT         <th>OPCIONAL6</th>
PROMPT         <th>OPCIONAL5</th>
PROMPT         <th>OPCIONAL4</th>
PROMPT         <th>OPCIONAL3</th>
PROMPT         <th>OPCIONAL2</th>
PROMPT         <th>OPCIONAL1</th>
PROMPT     </tr>
PROMPT     </thead>
PROMPT
PROMPT ______________________________________________________________________________
PROMPT
PROMPT [Richard] : Dentro do navegador Use CTR + U
PROMPT [Richard] : Ou edite o arquivo com editor de texto.


