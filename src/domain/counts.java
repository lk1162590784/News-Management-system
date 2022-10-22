package domain;

public class counts {
    private String TABLE_NAME;
    private String TABLE_ROWS;

    public String getTABLE_NAME() {
        return TABLE_NAME;
    }

    public void setTABLE_NAME(String TABLE_NAME) {
        this.TABLE_NAME = TABLE_NAME;
    }

    public String getTABLE_ROWS() {
        return TABLE_ROWS;
    }

    public void setTABLE_ROWS(String TABLE_ROWS) {
        this.TABLE_ROWS = TABLE_ROWS;
    }

    @Override
    public String toString() {
        return "counts{" +
                "TABLE_NAME='" + TABLE_NAME + '\'' +
                ", TABLE_ROWS='" + TABLE_ROWS + '\'' +
                '}';
    }
}
