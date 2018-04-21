/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ads.poo.projeto4.grupo1;

import java.util.ArrayList;

/**
 *
 * @author Outline
 */
public class Bd {
    private static ArrayList<Fornecedor> fornecedoresList = new ArrayList<>();
    
    public static ArrayList<Fornecedor> getFornecedoresList() {
        return fornecedoresList;
    }
    
    private static ArrayList<Clientes> clientesList = new ArrayList<>();
    public static ArrayList<Clientes> getClientesList() {
        return clientesList;
    }
    
    private static ArrayList<Clientes> clientesTempList = new ArrayList<>();
    public static ArrayList<Clientes> getClientesTempList() {
        return clientesTempList;
    }
    
    public static int indice;
    public static int aux;
    
    }


