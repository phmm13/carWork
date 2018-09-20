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
 * @date 03/05/2018
 */
public class ClienteDAO extends DataBaseDAO{
    
    public void inserir (Cliente c) throws Exception{
        String sql = "INSERT INTO tb_cliente (nme_cliente,cel_cliente,eml_cliente) VALUES (?,?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,c.getNome_cliente());
        pstm.setString(2,c.getTelefone_cliente());
        pstm.setString(3,c.getEmail_cliente());
        pstm.execute();
        this.desconectar();
    }
    public void alterar (Cliente c) throws Exception{
        String sql = "UPDATE tb_cliente SET nme_cliente=?,cel_cliente=?,eml_cliente=?WHERE idt_cliente=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,c.getNome_cliente());
        pstm.setString(2,c.getTelefone_cliente());
        pstm.setString(3,c.getEmail_cliente());
        pstm.setInt(4,c.getId_cliente());
        pstm.execute();
        this.desconectar();
    }
    public void ativar (Cliente c) throws Exception{
        String sql = "UPDATE tb_cliente SET flg_cliente = true WHERE idt_cliente = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,c.getId_cliente());
        pstm.execute();
        this.desconectar();
    }
    public void desativar (Cliente c) throws Exception{
        String sql = "UPDATE tb_cliente SET flg_cliente = false WHERE idt_cliente = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,c.getId_cliente());
        pstm.execute();
        this.desconectar();
    }
    public ArrayList<Cliente> listar () throws Exception{
        ArrayList<Cliente> lista = new ArrayList<Cliente>();
        String sql = "SELECT*FROM tb_cliente";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            Cliente c = new Cliente();
            c.setId_cliente(rs.getInt("idt_cliente"));
            c.setNome_cliente(rs.getString("nme_cliente"));
            c.setTelefone_cliente(rs.getString("cel_cliente"));
            c.setEmail_cliente(rs.getString("eml_cliente"));
            c.setInd_ativo(rs.getBoolean("flg_cliente"));
            
            lista.add(c);
        }
        this.desconectar();
        return lista;
    }
    public Cliente carregaPorId(Cliente c) throws Exception{
        String sql = "SELECT*FROM tb_cliente WHERE idt_cliente=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,c.getId_cliente());
        ResultSet rs = pstm.executeQuery();
        Cliente c1 = new Cliente();
        if(rs.next()){
            c1.setId_cliente(rs.getInt("idt_cliente"));
            c1.setNome_cliente(rs.getString("nme_cliente"));
            c1.setTelefone_cliente(rs.getString("cel_cliente"));
            c1.setEmail_cliente(rs.getString("eml_cliente"));
            c1.setInd_ativo(rs.getBoolean("flg_cliente"));
        }
        this.desconectar();
        return c1;
    }
    public void vincularCarro (int idCarro,int idCliente) throws Exception{
        String sql = "INSERT INTO ta_carro_cliente (cod_carro,cod_cliente) VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, idCarro);
        pstm.setInt(2, idCliente);
        pstm.execute();
        this.desconectar();
    }
    
    
}
