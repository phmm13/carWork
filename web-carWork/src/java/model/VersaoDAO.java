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
 * @date 22/05/2018
 */
public class VersaoDAO extends DataBaseDAO {

    public void inserir(Versao ve) throws Exception {
        String sql = "INSERT INTO versao (nome_versao,modelo_id_modelo) VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, ve.getNome_versao());
        pstm.setInt(2, ve.getModelo().getId_modelo());
        pstm.execute();
        this.desconectar();
    }

    public void alterar(Versao ve) throws Exception {
        String sql = "UPDATE versao SET nome_versao=?,modelo_id_modelo=? WHERE id_versao=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, ve.getNome_versao());
        pstm.setInt(2, ve.getModelo().getId_modelo());
        pstm.setInt(3, ve.getId_versao());
        pstm.execute();
        this.desconectar();
    }

    public void excluir(Versao ve) throws Exception {
        String sql = "DELETE versao WHERE id_versao = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, ve.getId_versao());
        pstm.execute();
        this.desconectar();
    }

    public ArrayList<Versao> listar() throws Exception {
        ArrayList<Versao> lista = new ArrayList<Versao>();
        String sql = "SELECT*FROM versao";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Versao ve = new Versao();
            ve.setId_versao(rs.getInt("id_versao"));
            ve.setNome_versao(rs.getString("nome_versao"));
            Modelo mo = new Modelo();
            mo.setId_modelo(rs.getInt("modelo_id_modelo"));
            ve.setModelo(mo.carregaPorId());

            lista.add(ve);
        }
        this.desconectar();
        return lista;
    }

    public Versao carregaPorId(Versao ve) throws Exception {
        String sql = "SELECT*FROM versao WHERE id_versao=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, ve.getId_versao());
        ResultSet rs = pstm.executeQuery();
        Versao ve1 = new Versao();
        if (rs.next()) {
            ve1.setId_versao(rs.getInt("id_versao"));
            ve1.setNome_versao(rs.getString("nome_versao"));
            Modelo mo = new Modelo();
            mo.setId_modelo(rs.getInt("modelo_id_modelo"));
            ve1.setModelo(mo.carregaPorId());
        }

        this.desconectar();
        return ve1;
    }
}
