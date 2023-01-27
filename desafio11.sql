-- Crie uma QUERY que altere o nome de algumas músicas e as ordene em ordem alfabética decrescente com as colunas abaixo se baseando nos seguintes critérios:

-- O nome da música em seu estado normal com o alias nome_musica

-- O nome da música atualizado com o alias novo_nome

-- Selecione apenas as músicas que tiverem seus nomes trocados

-- Critérios

-- Trocar a palavra "Bard" do nome da música por "QA"

-- Trocar a palavra "Amar" do nome da música por "Code Review"

-- Trocar a palavra "Pais" no final do nome da música por "Pull Requests"

-- Trocar a palavra "SOUL" no final do nome da música por "CODE"

-- Trocar a palavra "SUPERSTAR" no final do nome da música por "SUPERDEV"

SELECT nome as 'nome_musica',
REPLACE (
        REPLACE(
                REPLACE(
                        REPLACE (
                                REPLACE (nome, 'SUPERSTAR', 'SUPERDEV'),
                                    'SOUL',
                                    'CODE'
                            ),
                            'Pais',
                            'Pull Requests'
                    ),
                    'Amar',
                    'Code Review'
            ),
            'Bard',
            'QA'
    ) AS 'novo_nome'
FROM `SpotifyClone`.musicas
WHERE
    nome LIKE '%Bard%'
    OR nome LIKE '%Amar%'
    OR nome LIKE '%Pais%'
    OR nome LIKE '%SOUL%'
    OR nome LIKE '%SUPERSTAR%'
ORDER BY novo_nome DESC;
