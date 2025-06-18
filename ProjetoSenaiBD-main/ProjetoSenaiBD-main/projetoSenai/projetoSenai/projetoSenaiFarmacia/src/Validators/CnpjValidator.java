package Validators;


public class CnpjValidator {

  
    public static boolean isValidFormat(String cnpj) {
    	
        // Remover caracteres não numéricos 
        String cnpjNumeros = cnpj.replaceAll("[^0-9]", "");

        //  Verificar se o CNPJ tem 14 dígitos
        if (cnpjNumeros.length() != 14) {
            return false;
        }

        //  Verificar se todos os dígitos são iguais 
        if (cnpjNumeros.matches("(\\d)\\1{13}")) {
            return false;
        }
        return true; 
    }
}