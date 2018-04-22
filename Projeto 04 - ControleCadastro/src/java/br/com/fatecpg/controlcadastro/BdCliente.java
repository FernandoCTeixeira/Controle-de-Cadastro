package br.com.fatecpg.controlcadastro;


import java.util.ArrayList;

public class BdCliente {
    public static ArrayList<Cliente> clienteList = new ArrayList();

    public static ArrayList<Cliente> getClienteList() {
        return clienteList;
    }
    
    public static void setClienteList(ArrayList<Cliente> aClienteList) {
        clienteList = aClienteList;
    }
    
}
