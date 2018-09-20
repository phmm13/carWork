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
public class OficinaDAO extends DataBaseDAO{
    public void inserir(Oficina of) throws Exception {
        String sql = "INSERT INTO tb_oficina (nme_oficina,tel_oficina,cod_tipo_oficina) VALUES (?,?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, of.getNome_oficina());
        pstm.setString(2, of.getTelefone_oficina());
        pstm.setInt(3, of.getTipoOfcina().getId_tipo_oficina());
        pstm.execute();
        this.desconectar();
    }

    public void alterar(Oficina of) throws Exception {
        String sql = "UPDATE tb_oficina SET nme_oficina=?,tel_oficina=?,cod_tipo_oficina=? WHERE idt_oficina=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, of.getNome_oficina());
        pstm.setString(2, of.getTelefone_oficina());
        pstm.setInt(3, of.getTipoOfcina().getId_tipo_oficina());
        pstm.setInt(4, of.getId_oficina());
        pstm.execute();
        this.desconectar();
    }

    public void excluir(Oficina of) throws Exception {
        String sql = "DELETE tb_oficina WHERE idt_oficina = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, of.getId_oficina());
        pstm.execute();
        this.desconectar();
    }

    public ArrayList<Oficina> listar() throws Exception {
        ArrayList<Oficina> lista = new ArrayList<Oficina>();
        String sql = "SELECT*FROM tb_oficina";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Oficina of = new Oficina();
            of.setId_oficina(rs.getInt("idt_oficina"));
            of.setNome_oficina(rs.getString("nme_oficina"));
            of.setTelefone_oficina(rs.getString("tel_oficina"));
            
            TipoOficina to = new TipoOficina();
            to.setId_tipo_oficina(rs.getInt("cod_tipo_oficina"));
            
            of.setTipoOfcina(to.carregaPorId());

            lista.add(of);
        }
        this.desconectar();
        return lista;
    }

    public Oficina carregaPorId(Oficina of) throws Exception {
        String sql = "SELECT*FROM tb_oficina WHERE idt_oficina=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, of.getId_oficina());
        ResultSet rs = pstm.executeQuery();
        Oficina of1 = new Oficina();
        if (rs.next()) {
            of1.setId_oficina(rs.getInt("idt_oficina"));
            of1.setNome_oficina(rs.getString("nme_oficina"));
            of1.setTelefone_oficina(rs.getString("tel_oficina"));
            
            TipoOficina to = new TipoOficina();
            to.setId_tipo_oficina(rs.getInt("cod_tipo_oficina"));
            
            of1.setTipoOfcina(to.carregaPorId());
        }

        this.desconectar();
        return of1;
    }
}
