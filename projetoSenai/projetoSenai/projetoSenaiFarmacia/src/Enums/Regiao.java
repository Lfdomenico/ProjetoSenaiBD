package Enums;

public enum Regiao {
    METROPOLITANA(1), // Ou o ID correspondente no seu DB
    MUNICIPAL(2),
    ESTADUAL(3);

    private final int id;

    Regiao(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }

    // Método para obter Regiao pelo ID, se necessário
    public static Regiao getById(int id) {
        for (Regiao regiao : Regiao.values()) {
            if (regiao.getId() == id) {
                return regiao;
            }
        }
        throw new IllegalArgumentException("ID de região inválido: " + id);
    }
}