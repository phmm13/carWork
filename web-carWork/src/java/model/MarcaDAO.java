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
public class MarcaDAO extends DataBaseDAO{
     public void inserir (Marca m) throws Exception{
        String sql = "INSERT INTO tb_marca (nme_marca) VALUES (?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,m.getNome_marca());
        pstm.execute();
        this.desconectar();
    }
    public void alterar (Marca m) throws Exception{
        String sql = "UPDATE tb_marca SET nme_marca=? WHERE idt_marca=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,m.getNome_marca());
        pstm.setInt(2,m.getId_marca());
        pstm.execute();
        this.desconectar();
    }
    public void excluir (Marca m) throws Exception{
        String sql = "DELETE tb_marca WHERE idt_marca = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,m.getId_marca());
        pstm.execute();
        this.desconectar();
    }
    public ArrayList<Marca> listar () throws Exception{
        ArrayList<Marca> lista = new ArrayList<Marca>();
        String sql = "SELECT*FROM tb_marca";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            Marca m = new Marca();
            m.setId_marca(rs.getInt("idt_marca"));
            m.setNome_marca(rs.getString("nme_marca"));
            
            lista.add(m);
        }
        this.desconectar();
        return lista;
    }
    public Marca carregaPorId(Marca m) throws Exception{
        String sql = "SELECT*FROM tb_marca WHERE idt_marca=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,m.getId_marca());
        ResultSet rs = pstm.executeQuery();
        Marca m1 = new Marca();
        if(rs.next()){
            m1.setId_marca(rs.getInt("idt_marca"));
            m1.setNome_marca(rs.getString("nme_marca"));
        }
        
        this.desconectar();
        return m1;
    }
}
