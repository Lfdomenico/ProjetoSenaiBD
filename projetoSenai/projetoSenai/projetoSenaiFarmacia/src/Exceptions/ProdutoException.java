package Exceptions;

public class ProdutoException extends Exception {

    // Adicione construtores para que a exceção possa carregar uma mensagem descritiva
    public ProdutoException() {
        super("Erro relacionado ao Produto.");
    }

    public ProdutoException(String message) {
        super(message);
    }

    public ProdutoException(String message, Throwable cause) {
        super(message, cause);
    }
}