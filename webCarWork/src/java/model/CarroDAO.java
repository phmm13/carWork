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
public class CarroDAO extends DataBaseDAO{
    public void inserir (Carro c) throws Exception{
        String sql = "INSERT INTO tb_carro (ano_carro,cod_versao) VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,c.getAno_carro());
        pstm.setInt(2,c.getVersao().getId_versao());
        pstm.execute();
        this.desconectar();
    }
    public void alterar (Carro c) throws Exception{
        String sql = "UPDATE tb_carro SET ano_carro=?,cod_versao=? WHERE idt_carro=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1,c.getAno_carro());
        pstm.setInt(2,c.getVersao().getId_versao());
        pstm.setInt(3,c.getId_carro());
        pstm.execute();
        this.desconectar();
    }
    public void excluir (Carro c) throws Exception{
        String sql = "DELETE tb_carro WHERE idt_carro = ?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,c.getId_carro());
        pstm.execute();
        this.desconectar();
    }
    public Carro carregaPorId(Carro c) throws Exception{
        String sql = "SELECT*FROM tb_carro WHERE idt_carro=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1,c.getId_carro());
        ResultSet rs = pstm.executeQuery();
        Carro c1 = new Carro();
        if(rs.next()){
            c1.setId_carro(rs.getInt("idt_carro"));
            c1.setAno_carro(rs.getString("ano_carro"));
            
            Versao v = new Versao();
            v.setId_versao(rs.getInt("cod_versao"));
            
            c1.setVersao(v.carregaPorId());
        }
        this.desconectar();
        return c1;
    }
    public ArrayList<Carro> listar () throws Exception{
        ArrayList<Carro> lista = new ArrayList<Carro>();
        String sql = "SELECT*FROM tb_carro";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while(rs.next()){
            Carro c = new Carro();
            c.setId_carro(rs.getInt("idt_carro"));
            c.setAno_carro(rs.getString("ano_carro"));
            
            Versao v = new Versao();
            v.setId_versao(rs.getInt("cod_versao"));
            
            c.setVersao(v.carregaPorId());
            lista.add(c);
        }
        this.desconectar();
        return lista;
    }

}
