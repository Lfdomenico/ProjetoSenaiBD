package Validators;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import Classes.ConexaoBD;

public class CpfValidator {
    public static boolean isValid(String cpf) {
        String cpfNumeros = cpf.replaceAll("[^0-9]", ""); 

        // . Verificar se o CPF tem exatamente 11 dígitos e é numérico

        if (cpfNumeros.length() != 11 || !cpfNumeros.matches("\\d{11}")) {
            return false;
        }

        //  Verificar se todos os dígitos são iguais

        if (cpfNumeros.matches("(\\d)\\1{10}")) { 
             return false;
        }


        return true;
    }
    
    public static boolean cpfJaExisteNoBanco(String cpf) {
        try (Connection conn = ConexaoBD.getConexao()) {
            String sql = "SELECT COUNT(*) FROM funcionario WHERE CPF = ?";
            try (PreparedStatement stmt = conn.prepareStatement(sql)) {
                stmt.setString(1, cpf);
                try (ResultSet rs = stmt.executeQuery()) {
                    if (rs.next()) {
                        return rs.getInt(1) > 0; // Se count > 0, o CPF já existe
                    }
                }
            }
        } catch (SQLException e) {
            System.err.println("Erro de SQL: " + "ao verificar CPF existente: " + e.getMessage());
            e.printStackTrace();
        }
        return false; 
    }
}
