USE Loja;

DROP VIEW IF EXISTS V_ContasNaoPagas;

CREATE VIEW V_ContasNaoPagas AS
SELECT
    CR.idContaReceber AS 'ID_Conta',
    C.Nome AS 'Nome_Cliente',
    C.CPF AS 'CPF_Cliente',
    CR.DataVencimento AS 'Data_Vencimento',
    CR.Valor AS 'Valor_Conta'
FROM
    ContaReceber AS CR
INNER JOIN
    Cliente AS C ON CR.Cliente_idCliente = C.idCliente
WHERE
    CR.Situação = '1';