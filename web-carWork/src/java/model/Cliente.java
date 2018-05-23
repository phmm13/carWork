/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.time.LocalDate;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 03/05/2018
 */
public class Cliente {

    private int id_cliente;
    private String nome_cliente;
    private String telefone_cliente;
    private String email_cliente;
    private boolean ind_ativo;

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public String getNome_cliente() {
        return nome_cliente;
    }

    public void setNome_cliente(String nome_cliente) {
        this.nome_cliente = nome_cliente;
    }

    public String getTelefone_cliente() {
        return telefone_cliente;
    }

    public void setTelefone_cliente(String telefone_cliente) {
        this.telefone_cliente = telefone_cliente;
    }

    public String getEmail_cliente() {
        return email_cliente;
    }

    public void setEmail_cliente(String email_cliente) {
        this.email_cliente = email_cliente;
    }

    public boolean isInd_ativo() {
        return ind_ativo;
    }

    public void setInd_ativo(boolean ind_ativo) {
        this.ind_ativo = ind_ativo;
    }
}
