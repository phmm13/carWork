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
public class viewRankingMontadoras {
    private String nomeMarca;
    private int qtdModelos;

    public String getNomeMarca() {
        return nomeMarca;
    }

    public void setNomeMarca(String nomeMarca) {
        this.nomeMarca = nomeMarca;
    }

    public int getQtdModelos() {
        return qtdModelos;
    }

    public void setQtdModelos(int qtdModelos) {
        this.qtdModelos = qtdModelos;
    }
    public ArrayList<viewRankingMontadoras> view() throws Exception{
        viewDAO vDAO = new viewDAO();
        return vDAO.viewRankingMontadoras();
    }
}
