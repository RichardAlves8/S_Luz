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