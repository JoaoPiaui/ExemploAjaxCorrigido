﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Model
{
    [Table("vendas")]
    public class Venda
    {
        [Key, Column("id")]
        public int Id { get; set; }

        [Column("id_cliente")]
        public int idCliente { get; set; }

        [ForeignKey("idCliente")]
        public Pessoa Cliente { get; set; }

        [Column("descricao")]
        public string Descricao { get; set; }

        [Column("registro_ativo")]
        public bool RegistroAtivo { get; set; }
    }

}
