Richard.as@uni9.edu.br
i@richard.alves_8
https://github.com/RichardAlves8/S_Luz


-- < Here I left the steps of my goal as I develop and learn s2 > --

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
        - encontrei um pdf das tabelas rms -_-'
        - instalei oracle XE local pra praticar
        - baixei varios db com formatos de dados diferentes! (marquei com estrela aqui no git)
        - coisas novas por vir!! (:
}



< vou por aqui (deff em css do GIT (recalque da Sant_L)) >

Categorias = Table.FromRecords({
        [Categoria="Filtro um", PalavrasChave={"F1"}],
        [Categoria="Filtro dois", PalavrasChave={"F2", "F2 ALPH"}],
        [Categoria="Filtro tres", PalavrasChave={"F3 F3 F33", "f3"}],
        [Categoria="Filtro quatro", PalavrasChave={"F4"}],
    }),

// função
    DetectarCategoria = (texto as text) as text =>
        let
            Checar = Table.SelectRows(
                Categorias, each List.AnyTrue(L
                ist.Transform([PalavrasChave], (p) => Text.Contains(texto, p))
                )
            ),
            Resultado = if Table.RowCount(Checar) > 0 then Checar{0}[Categoria] else "Outros"
        in  
            Resultado,

    #"Personalização Adicionada1" = Table.AddColumn(
        #"Linhas Classificadas",
        "Categoria",
        each DetectarCategoria([Lançamento])