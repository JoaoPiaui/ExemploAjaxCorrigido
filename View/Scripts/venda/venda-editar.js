﻿$(function () {
    $tabela = $("#venda-produtos-index").Datatable({
        ajax: "/", serverSide: true, columns: [
            { data: "nome" },
            { data: "quantidade" },
            { data: "preco" },
            {
                render: function (data, type, row) {
                    return "/<button class = 'btn btn-primary botao-editar'\data-id=" + row.Id + ">Editar</button>\ <button class= 'btn btn-danger botao-apagar'\data-id=" + row.Id + ">Apagar</button>";
                }
            }
        ]
    })
});