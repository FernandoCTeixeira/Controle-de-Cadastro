package br.com.fatecpg.controlcadastro;


import java.util.ArrayList;

public class BdFornecedor {
    private static ArrayList<Fornecedor> fornecedorList = new ArrayList();

    public static ArrayList<Fornecedor> getFornecedorList() {
        return fornecedorList;
    }
    
}
