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
public class EnderecoDAO extends DataBaseDAO{
    public void inserir(Endereco en) throws Exception {
        String sql = "INSERT INTO endereco (cep,logradouro,bairro,complemento,numero,oficina_id_oficina) VALUES (?,?,?,?,?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, en.getCep());
        pstm.setString(2, en.getLogradouro());
        pstm.setString(3, en.getBairro());
        pstm.setString(4, en.getComplemento());
        pstm.setInt(5, en.getNumero());
        pstm.setInt(6, en.getOficina().getId_oficina());
        pstm.execute();
        this.desconectar();
    }

    public void alterar(Endereco en) throws Exception {
        String sql = "UPDATE endereco SET cep=?,logradouro=?,bairro=?,complemento=?,numero=?,oficina_id_oficina=? WHERE id_endereco=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, en.getCep());
        pstm.setString(2, en.getLogradouro());
        pstm.setString(3, en.getBairro());
        pstm.setString(4, en.getComplemento());
        pstm.setInt(5, en.getNumero());
        pstm.setInt(6, en.getOficina().getId_oficina());
        pstm.setInt(7, en.getId_endereco());
        pstm.execute();
        this.desconectar();
    }

    public void excluir(Endereco en) throws Exception {
        String sql = "DELETE endereco WHERE id_endereco = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, en.getId_endereco());
        pstm.execute();
        this.desconectar();
    }

    public ArrayList<Endereco> listar() throws Exception {
        ArrayList<Endereco> lista = new ArrayList<Endereco>();
        String sql = "SELECT*FROM endereco";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Endereco en = new Endereco();
            en.setId_endereco(rs.getInt("id_endereco"));
            en.setCep(rs.getString("cep"));
            en.setLogradouro(rs.getString("logradouro"));
            en.setBairro(rs.getString("bairro"));
            en.setComplemento(rs.getString("complemento"));
            en.setNumero(rs.getInt("numero"));
            
            Oficina of = new Oficina();
            of.setId_oficina(rs.getInt("oficina_id_oficina"));
            
            en.setOficina(of.carregaPorId());

            lista.add(en);
        }
        this.desconectar();
        return lista;
    }

    public Endereco carregaPorId(Endereco en) throws Exception {
        String sql = "SELECT*FROM endereco WHERE id_endereco=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, en.getId_endereco());
        ResultSet rs = pstm.executeQuery();
        Endereco en1 = new Endereco();
        if (rs.next()) {
            en1.setId_endereco(rs.getInt("id_endereco"));
            en1.setCep(rs.getString("cep"));
            en1.setLogradouro(rs.getString("logradouro"));
            en1.setBairro(rs.getString("bairro"));
            en1.setComplemento(rs.getString("complemento"));
            en1.setNumero(rs.getInt("numero"));
            
            Oficina of = new Oficina();
            of.setId_oficina(rs.getInt("oficina_id_oficina"));
            
            en1.setOficina(of.carregaPorId());
        }

        this.desconectar();
        return en1;
    }
}
