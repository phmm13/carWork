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
public class ModeloDAO extends DataBaseDAO {

    public void inserir(Modelo mo) throws Exception {
        String sql = "INSERT INTO modelo (nome_modelo,marca_id_marca) VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, mo.getNome_modelo());
        pstm.setInt(2, mo.getMarca().getId_marca());
        pstm.execute();
        this.desconectar();
    }

    public void alterar(Modelo mo) throws Exception {
        String sql = "UPDATE modelo SET nome_modelo=?,marca_id_marca=? WHERE id_modelo=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, mo.getNome_modelo());
        pstm.setInt(2, mo.getMarca().getId_marca());
        pstm.setInt(3, mo.getId_modelo());
        pstm.execute();
        this.desconectar();
    }

    public void excluir(Modelo mo) throws Exception {
        String sql = "DELETE modelo WHERE id_tipo_oficina = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, mo.getId_modelo());
        pstm.execute();
        this.desconectar();
    }

    public ArrayList<Modelo> listar() throws Exception {
        ArrayList<Modelo> lista = new ArrayList<Modelo>();
        String sql = "SELECT*FROM modelo";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Modelo mo = new Modelo();
            mo.setId_modelo(rs.getInt("id_modelo"));
            mo.setNome_modelo(rs.getString("nome_modelo"));
            Marca ma = new Marca();
            ma.setId_marca(rs.getInt("marca_id_marca"));
            mo.setMarca(ma.carregaPorId());
            
            lista.add(mo);
        }
        this.desconectar();
        return lista;
    }

    public Modelo carregaPorId(Modelo mo) throws Exception {
        String sql = "SELECT*FROM modelo WHERE id_modelo=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, mo.getId_modelo());
        ResultSet rs = pstm.executeQuery();
        Modelo mo1 = new Modelo();
        if (rs.next()) {
            mo1.setId_modelo(rs.getInt("id_modelo"));
            mo1.setNome_modelo(rs.getString("nome_modelo"));
            Marca ma = new Marca();
            ma.setId_marca(rs.getInt("marca_id_marca"));
            mo1.setMarca(ma.carregaPorId());
        }

        this.desconectar();
        return mo1;
    }
}
