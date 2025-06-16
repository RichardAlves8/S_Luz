-- Search hide table guide Table ou view?
    SELECT OBJECT_NAME, OBJECT_TYPE 
    FROM ALL_OBJECTS 
    WHERE OBJECT_NAME = 'ESCHC';


--resultados possíveis
--tabela: OBJECT_TYPE = 'TABLE'
--view: OBJECT_TYPE = 'VIEW'
--sinônimo: OBJECT_TYPE = 'SYNONYM' (precisa do objeto real)
    SELECT TABLE_OWNER, TABLE_NAME
    FROM ALL_SYNONYMS
    WHERE SYNONYM_NAME = 'ESCHC';
        


-- Definição da view
    SELECT TEXT 
    FROM ALL_VIEWS 
    WHERE VIEW_NAME = 'ESCHC';
    --tabelas base estão sendo expostas (or not)


-- Caso raro Materialized View 
    SELECT * 
    FROM ALL_MVIEWS 
    WHERE MVIEW_NAME = 'ESCHC';

-- Após identificar 
    SELECT COLUMN_NAME
    FROM ALL_TAB_COLUMNS
    WHERE TABLE_NAME = 'Nome dela';