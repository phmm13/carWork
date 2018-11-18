/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 25/04/2018
 */
public class DataBaseDAO {
    Connection cn;
    public void conectar() throws Exception{
        Class.forName("com.mysql.cj.jdbc.Driver");
        //alterar a senha conforme a maquina virtual
        
        /*
        
        String banco = "carwork";
        String user = "root";
        String password = "carwork";
        String endereco = "142.93.192.165/";
        
        */
        
        String banco = "carwork";
        String user = "root";
        String password = "";
        String endereco = "localhost/";
        
        /*
        
        */
        cn = DriverManager.getConnection("jdbc:mysql://"+endereco+banco+"?autoReconnect=true&useSSL=false&useTimezone=true&serverTimezone=UTC",user,password);
        
    }
    
    public void desconectar() throws Exception{
        if(!cn.isClosed())
            cn.close();
    }
}
