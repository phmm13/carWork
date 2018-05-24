/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.ArrayList;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 03/05/2018
 */
public class Endereco {
    private int id_endereco;
    private String cep;
    private String logradouro;
    private String bairro;
    private String complemento;
    private int numero;
    private Oficina oficina;

    public int getId_endereco() {
        return id_endereco;
    }

    public void setId_endereco(int id_endereco) {
        this.id_endereco = id_endereco;
    }

    public String getCep() {
        return cep;
    }

    public void setCep(String cep) {
        this.cep = cep;
    }

    public String getLogradouro() {
        return logradouro;
    }

    public void setLogradouro(String logradouro) {
        this.logradouro = logradouro;
    }

    public String getBairro() {
        return bairro;
    }

    public void setBairro(String bairro) {
        this.bairro = bairro;
    }

    public String getComplemento() {
        return complemento;
    }

    public void setComplemento(String complemento) {
        this.complemento = complemento;
    }

    public int getNumero() {
        return numero;
    }

    public void setNumero(int numero) {
        this.numero = numero;
    }

    public Oficina getOficina() {
        return oficina;
    }

    public void setOficina(Oficina oficina) {
        this.oficina = oficina;
    }
    public void inserir () throws Exception{
        EnderecoDAO eDAO = new EnderecoDAO();
        eDAO.inserir(this);
    }
    public void alterar () throws Exception{
        EnderecoDAO eDAO = new EnderecoDAO();
        eDAO.alterar(this);
    }
    public void excluir () throws Exception{
        EnderecoDAO eDAO = new EnderecoDAO();
        eDAO.excluir(this);
    }
    public Endereco carregaPorId () throws Exception{
        EnderecoDAO eDAO = new EnderecoDAO();
        return eDAO.carregaPorId(this);
    }
    public ArrayList<Endereco> lsitar () throws Exception{
        EnderecoDAO eDAO = new EnderecoDAO();
        return eDAO.listar();
    }
}
