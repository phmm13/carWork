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
public class OficinaDAO extends DataBaseDAO {

    public void inserir(Oficina of) throws Exception {
        String sql = "INSERT INTO tb_oficina (nme_oficina,tel_oficina,cnpj_oficina,eml_oficina,usr_oficina,pwd_oficina,cep_oficina,lgd_oficina,bai_oficina,num_oficina,cod_tipo_oficina)"
                + " VALUES (?,?,?,?,?,?,?,?,?,?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, of.getNome_oficina());
        pstm.setString(2, of.getTelefone_oficina());
        pstm.setString(3, of.getCnpj_oficina());
        pstm.setString(4, of.getEml_oficina());
        pstm.setString(5, of.getUsr_oficina());
        pstm.setString(6, of.getPwd_oficina());
        pstm.setString(7, of.getCep_oficina());
        pstm.setString(8, of.getLgd_oficina());
        pstm.setString(9, of.getBai_oficina());
        pstm.setInt(10, of.getNum_oficina());
        pstm.setInt(11, of.getTipoOfcina().getId_tipo_oficina());
        pstm.execute();
        this.desconectar();
    }

    public void alterar(Oficina of) throws Exception {
        //nme_oficina,tel_oficina,cnpj_oficina,eml_oficina,usr_oficina,pwd_oficina,cep_oficina,lgd_oficina,bai_oficina,num_oficina,cod_tipo_oficina
        String sql = "UPDATE tb_oficina SET nme_oficina=?,tel_oficina=?,cnpj_oficina=?"
                + ",eml_oficina=?,usr_oficina=?,pwd_oficina=?,cep_oficina=?,lgd_oficina=?"
                + ",bai_oficina=?,num_oficina=?,cod_tipo_oficina=? "
                + "WHERE idt_oficina=?";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, of.getNome_oficina());
        pstm.setString(2, of.getTelefone_oficina());
        pstm.setString(3, of.getCnpj_oficina());
        pstm.setString(4, of.getEml_oficina());
        pstm.setString(5, of.getUsr_oficina());
        pstm.setString(6, of.getPwd_oficina());
        pstm.setString(7, of.getCep_oficina());
        pstm.setString(8, of.getLgd_oficina());
        pstm.setString(9, of.getBai_oficina());
        pstm.setInt(10, of.getNum_oficina());
        pstm.setInt(11, of.getTipoOfcina().getId_tipo_oficina());
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
            of.setCnpj_oficina(rs.getString("cnpj_oficina"));
            of.setEml_oficina(rs.getString("eml_oficina"));
            of.setUsr_oficina(rs.getString("usr_oficina"));
            of.setPwd_oficina(rs.getString("pwd_oficina"));
            of.setCep_oficina(rs.getString("cep_oficina"));
            of.setLgd_oficina(rs.getString("lgd_oficina"));
            of.setBai_oficina(rs.getString("bai_oficina"));
            of.setNum_oficina(rs.getInt("num_oficina"));

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
            of1.setCnpj_oficina(rs.getString("cnpj_oficina"));
            of1.setEml_oficina(rs.getString("eml_oficina"));
            of1.setUsr_oficina(rs.getString("usr_oficina"));
            of1.setPwd_oficina(rs.getString("pwd_oficina"));
            of1.setCep_oficina(rs.getString("cep_oficina"));
            of1.setLgd_oficina(rs.getString("lgd_oficina"));
            of1.setBai_oficina(rs.getString("bai_oficina"));
            of1.setNum_oficina(rs.getInt("num_oficina"));

            TipoOficina to = new TipoOficina();
            to.setId_tipo_oficina(rs.getInt("cod_tipo_oficina"));

            of1.setTipoOfcina(to.carregaPorId());
        }

        this.desconectar();
        return of1;
    }

    public Oficina login(String usuario, String senha) throws Exception {
        String sql = "SELECT*FROM tb_oficina WHERE usr_oficina = ? AND pwd_oficina = ? ";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setString(1, usuario);
        pstm.setString(2, senha);

        ResultSet rs = pstm.executeQuery();
        Oficina of1 = new Oficina();
        if (rs.next()) {
            of1.setId_oficina(rs.getInt("idt_oficina"));
            of1.setNome_oficina(rs.getString("nme_oficina"));
            of1.setTelefone_oficina(rs.getString("tel_oficina"));
            of1.setCnpj_oficina(rs.getString("cnpj_oficina"));
            of1.setEml_oficina(rs.getString("eml_oficina"));
            of1.setUsr_oficina(rs.getString("usr_oficina"));
            of1.setPwd_oficina(rs.getString("pwd_oficina"));
            of1.setCep_oficina(rs.getString("cep_oficina"));
            of1.setLgd_oficina(rs.getString("lgd_oficina"));
            of1.setBai_oficina(rs.getString("bai_oficina"));
            of1.setNum_oficina(rs.getInt("num_oficina"));

            TipoOficina to = new TipoOficina();
            to.setId_tipo_oficina(rs.getInt("cod_tipo_oficina"));

            of1.setTipoOfcina(to.carregaPorId());
        }

        this.desconectar();
        return of1;

    }

    public void vincularCarro(Oficina of, int idCarro) throws Exception {
        String sql = "INSERT INTO ta_oficina_carro (cod_oficina,cod_carro)"
                + " VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, of.getId_oficina());
        pstm.setInt(2, idCarro);
        pstm.execute();
        this.desconectar();
    }

    public void vincularServico(Oficina of, int idServico) throws Exception {
        String sql = "INSERT INTO ta_servico_oficina (cod_oficina,cod_servico)"
                + " VALUES (?,?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, of.getId_oficina());
        pstm.setInt(2, idServico);
        pstm.execute();
        this.desconectar();
    }

    public ArrayList<TipoServico> servicosVinculados(Oficina of) throws Exception {
        ArrayList<TipoServico> lista = new ArrayList<TipoServico>();
        String sql = "SELECT*FROM ta_servico_oficina";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            TipoServico ts = new TipoServico();
            ts.setId_tipo_servico(rs.getInt("cod_servico"));
            ts = ts.carregaPorId();
            lista.add(ts);
        }
        this.desconectar();
        return lista;
    }

    public ArrayList<Carro> carrosVinculados(Oficina of) throws Exception {
        ArrayList<Carro> lista = new ArrayList<Carro>();
        String sql = "SELECT*FROM ta_oficina_carro";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Carro c = new Carro();
            c.setId_carro(rs.getInt("cod_carro"));
            c = c.carregaPorId();
            lista.add(c);
        }
        this.desconectar();
        return lista;
    }

    public ArrayList<Oficina> buscaPorCarro(int idCarro,int idTipoServico,int idTipoOficina) throws Exception {
        ArrayList<Oficina> lista = new ArrayList<Oficina>();
        String sql = "SELECT * FROM tb_carro tba "
                + "INNER JOIN ta_oficina_carro toc on tba.idt_carro = toc.cod_carro "
                + "INNER JOIN tb_oficina tbo on tbo.idt_oficina = toc.cod_oficina "
                + "INNER JOIN td_tipo_oficina tto on tbo.cod_tipo_oficina = tto.idt_tipo_oficina "
                + "WHERE tba.idt_carro = ? "
                + "AND tto.idt_tipo_oficina = ? "
                + "AND tbo.idt_oficina = "
                + "(SELECT tso.cod_oficina "
                + "FROM ta_servico_oficina tso "
                + "INNER JOIN td_tipo_servico tts on tso.cod_servico = tts.idt_tipo_servico "
                + "WHERE tts.idt_tipo_servico = ?)";
        this.conectar();
        PreparedStatement pstm = cn.prepareStatement(sql);
        pstm.setInt(1, idCarro);
        pstm.setInt(2,idTipoOficina);
        pstm.setInt(3,idTipoServico);
        ResultSet rs = pstm.executeQuery();
        while (rs.next()) {
            Oficina of = new Oficina();
            of.setId_oficina(rs.getInt("cod_oficina"));
            of = of.carregaPorId();
            lista.add(of);
        }
        this.desconectar();
        return lista;
    }

}
