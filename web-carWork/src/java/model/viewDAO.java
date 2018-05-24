/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 24/05/2018
 */
public class viewDAO extends DataBaseDAO {

    public ArrayList<viewCadastroCliente> viewCadastroCliente() throws Exception {
        String sql = "SELECT*FROM cadastro_cliente";
        ArrayList<viewCadastroCliente> lista = new ArrayList<viewCadastroCliente>();
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            viewCadastroCliente vcc = new viewCadastroCliente();
            vcc.setIdCliente(rs.getInt("ID Cliente"));
            vcc.setTelefone(rs.getString("Telefone"));
            vcc.setEmail(rs.getString("E-mail"));
            vcc.setNome(rs.getString("Nome do Cliente"));
            vcc.setIdCarro(rs.getInt("ID carro"));
            lista.add(vcc);
        }
        this.desconectar();
        return lista;
    }
    public ArrayList<viewRankingMontadoras> viewRankingMontadoras () throws Exception{
        ArrayList<viewRankingMontadoras> lista = new ArrayList<viewRankingMontadoras>();
        String sql = "SELECT*FROM ranking_montadoras";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            viewRankingMontadoras vrm = new viewRankingMontadoras();
            vrm.setNomeMarca(rs.getString("Nome Marca"));
            vrm.setQtdModelos(rs.getInt("Quantidade de modelos"));
            
            lista.add(vrm);
        }
        this.desconectar();
        return lista;
    }
    public ArrayList<viewInfo> viewInfo () throws Exception{
        ArrayList<viewInfo> lista = new ArrayList<viewInfo>();
        String sql = "SELECT*FROM info";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            viewInfo vi = new viewInfo();
            vi.setNomeCliente(rs.getString("Nome do cliente"));
            vi.setEmail(rs.getString("E-mail"));
            vi.setTelefone(rs.getString("Telefone"));
            vi.setVersaoCarro(rs.getString("Versao do carro"));
            vi.setModeloCarro(rs.getString("Modelo do carro"));
            vi.setMarcaCarro(rs.getString("Marca do carro"));
            vi.setIdCliente(rs.getInt("ID Cliente"));
            vi.setIdCarro(rs.getInt("ID do carro"));
            
            lista.add(vi);
        }
        this.desconectar();
        return lista;
    }
    public ArrayList<viewRankingOficinas> viewRankingOficinas () throws Exception{
        ArrayList<viewRankingOficinas> lista = new ArrayList<viewRankingOficinas>();
        String sql = "SELECT*FROM ranking_oficinas";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            viewRankingOficinas vro = new viewRankingOficinas();
            vro.setNome(rs.getString("Oficina"));
            vro.setQtd(rs.getInt("Quantidade de Veiculos"));
            lista.add(vro);
        }
        this.desconectar();
        return lista;
    }
}
