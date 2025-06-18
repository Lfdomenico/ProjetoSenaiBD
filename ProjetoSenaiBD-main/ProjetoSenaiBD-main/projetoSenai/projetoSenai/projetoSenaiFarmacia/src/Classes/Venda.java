package Classes;

import Enums.Status;
import java.time.LocalDate;
import java.util.ArrayList;


public class Venda extends Transacoes {
    private Transportadora transportadora;
    private int idTransportadoraDB; 

    public Venda() {
        super();
        setProdutos(new ArrayList<>());
        this.idTransportadoraDB = 0; 
    }


    public Venda(ArrayList<Itens> itens, LocalDate data, Funcionario funcionario, Status status, double valorTotal, Transportadora transportadora) {
        super(itens, data, funcionario, status, valorTotal);
        this.transportadora = transportadora;
        this.idTransportadoraDB = (transportadora != null) ? transportadora.getIdDB() : 0;
    }

    public Transportadora getTransportadora() {
        return transportadora;
    }

    public void setTransportadora(Transportadora transportadora) {
        this.transportadora = transportadora;
        this.idTransportadoraDB = (transportadora != null) ? transportadora.getIdDB() : 0;
    }

    public int getIdTransportadoraDB() {
        return idTransportadoraDB;
    }

    @Override
    public double calculaTotal() {
        double total = 0;
        if (getProdutos() != null) {
            for (Itens item : getProdutos()) {
                total += item.valorVenda();
            }
        } else {
            System.err.println("Aviso: Lista de produtos na venda é nula. Calculando total sem itens.");
        }

        if (transportadora == null) {
            throw new IllegalStateException("Venda não pode ser finalizada sem transportadora para cálculo de frete.");
        }

        if (transportadora.getTaxa() < 0) {
            throw new IllegalStateException("Taxa da transportadora inválida (negativa).");
        }

        total += (transportadora.getTaxa() / 100.0) * total;
        return total;
    }
}