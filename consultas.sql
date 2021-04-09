-- Letra A

select cli.nome,
       cli.sobreNome,
       cli.bairro,
       cart.movimentacao,
       cart.data_movimento

    from clientes cli
  left join cartaocredito cart on cart.id_cliente = cli.id_cliente

    order by data_movimento ASC;

-- Letra B

select cli.nome,
       cli.sobreNome,
       cli.renda

    from clientes cli