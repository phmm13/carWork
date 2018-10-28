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
        String sql = "INSERT INTO tb_modelo (nme_modelo,cod_marca) VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, mo.getNome_modelo());
        pstm.setInt(2, mo.getMarca().getId_marca());
        pstm.execute();
        this.desconectar();
    }

    public void alterar(Modelo mo) throws Exception {
        String sql = "UPDATE tb_modelo SET nme_modelo=?,cod_marca=? WHERE idt_modelo=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, mo.getNome_modelo());
        pstm.setInt(2, mo.getMarca().getId_marca());
        pstm.setInt(3, mo.getId_modelo());
        pstm.execute();
        this.desconectar();
    }

    public void excluir(Modelo mo) throws Exception {
        String sql = "DELETE tb_modelo WHERE id_tipo_oficina = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, mo.getId_modelo());
        pstm.execute();
        this.desconectar();
    }

    public ArrayList<Modelo> listar() throws Exception {
        ArrayList<Modelo> lista = new ArrayList<Modelo>();
        String sql = "SELECT*FROM tb_modelo";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Modelo mo = new Modelo();
            mo.setId_modelo(rs.getInt("idt_modelo"));
            mo.setNome_modelo(rs.getString("nme_modelo"));
            Marca ma = new Marca();
            ma.setId_marca(rs.getInt("cod_marca"));
            mo.setMarca(ma.carregaPorId());
            
            lista.add(mo);
        }
        this.desconectar();
        return lista;
    }

    public Modelo carregaPorId(Modelo mo) throws Exception {
        String sql = "SELECT*FROM tb_modelo WHERE idt_modelo=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, mo.getId_modelo());
        ResultSet rs = pstm.executeQuery();
        Modelo mo1 = new Modelo();
        if (rs.next()) {
            mo1.setId_modelo(rs.getInt("idt_modelo"));
            mo1.setNome_modelo(rs.getString("nme_modelo"));
            
            Marca ma = new Marca();
            ma.setId_marca(rs.getInt("cod_marca"));
            mo1.setMarca(ma.carregaPorId());
        }

        this.desconectar();
        return mo1;
    }
}
