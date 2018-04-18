package br.com.fatecpg.controlcadastro;


import java.util.ArrayList;

public class BdCliente {
    private static ArrayList<Cliente> clienteList = new ArrayList();

    public static ArrayList<Cliente> getClienteList() {
        return clienteList;
    }
    
}
