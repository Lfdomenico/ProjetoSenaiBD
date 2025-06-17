package Classes;

import java.util.ArrayList;

import Exceptions.FuncionarioException;
import Validators.FuncionarioValidator;

public class Funcionario {
	private String nome;
	private String cpf;
	private String id;
	private Setor setor;
	private Salario salario;

	public Funcionario() {

	}

	public Funcionario(String nome, String cpf, Setor setor, Salario salario)
			throws FuncionarioException {
		if (!FuncionarioValidator.isValidCpf(cpf) || !FuncionarioValidator.isValidNome(nome)) {
			throw new FuncionarioException();
		}

		this.nome = nome;
		this.cpf = cpf;
		this.setor = setor;
		this.salario = salario;
	}

	public Funcionario(String id, String nome, String cpf, Setor setor, Salario salario)
			throws FuncionarioException {
		this(nome, cpf, setor, salario);
		this.id = id;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) throws FuncionarioException {
	}

	public String getCpf() {
		return cpf;
	}

	public void setCpf(String cpf) throws FuncionarioException {
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public Setor getSetor() {
		return setor;
	}

	public void setSetor(Setor setor) {
		this.setor = setor;
	}

	public Salario getSalario() {
		return salario;
	}

	public void setSalario(Salario salario) {
		this.salario = salario;
	}


	@Override
	public String toString() {
		String salarioStr = (salario != null) ? "Salário: " + salario.getSalario() : "Salário não definido";
		return "Nome: " + nome + "\nCPF: " + cpf + "\nSetor: " + setor.getNome() + "\n"
				+ salarioStr + "\nID: " + id;
	}
}