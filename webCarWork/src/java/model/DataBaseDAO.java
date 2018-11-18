/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 * @author Pedro Henrique Marcelino Matias
 * @date 25/04/2018
 */
public class DataBaseDAO {
    Connection cn;
    public void conectar() throws Exception{
        Class.forName("com.mysql.jdbc.Driver");
        //alterar a senha conforme a maquina virtual
        String banco = "bd";
        String user = "root";
        String password = "example";
        cn = DriverManager.getConnection("jdbc:mysql://142.93.192.165:5556/"+banco,user,password);
    }
    
    public void desconectar() throws Exception{
        if(!cn.isClosed())
            cn.close();
    }
}
