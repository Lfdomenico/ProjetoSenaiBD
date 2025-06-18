package Enums;

public enum Regiao {
    METROPOLITANA(1),
    MUNICIPAL(2),
    ESTADUAL(3);

    private final int id;

    Regiao(int id) {
        this.id = id;
    }

    public int getId() {
        return id;
    }


    public static Regiao getById(int id) {
        for (Regiao regiao : Regiao.values()) {
            if (regiao.getId() == id) {
                return regiao;
            }
        }
        throw new IllegalArgumentException("ID de região inválido: " + id);
    }
}