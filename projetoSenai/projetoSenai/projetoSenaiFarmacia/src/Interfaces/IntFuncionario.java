package Interfaces;

import Classes.Funcionario;
import Classes.Setor;
import Exceptions.FuncionarioException;

import java.util.ArrayList;
import java.util.Scanner;

public interface IntFuncionario {
    void menu();
    void cadastrarFuncionario(Scanner scanner, ArrayList<Setor> setores, ArrayList<Funcionario> funcionarios) throws FuncionarioException;
    void listarFuncionariosPorSetor(Scanner scanner, ArrayList<Setor> setores);
    void editarFuncionario(Scanner scanner, ArrayList<Setor> setores);
    void excluirFuncionario(Scanner sc, ArrayList<Funcionario> funcionarios);
}

