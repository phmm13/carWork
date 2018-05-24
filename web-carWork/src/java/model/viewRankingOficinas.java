/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.util.ArrayList;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 24/05/2018
 */
public class viewRankingOficinas {
    private String nome;
    private int qtd;

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getQtd() {
        return qtd;
    }

    public void setQtd(int qtd) {
        this.qtd = qtd;
    }
    public ArrayList<viewRankingOficinas> view() throws Exception{
        viewDAO vDAO = new viewDAO();
        return vDAO.viewRankingOficinas();
    }
}
