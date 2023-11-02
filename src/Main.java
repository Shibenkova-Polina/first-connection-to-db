import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class Main {
    public static void main(String[] args) {
        String url = "jdbc:postgresql://localhost:5432/postgres";
        String username = "postgres";
        String password = "Polina/2023";

        System.out.println("+-------------------+-----------------+--------------------+");
        System.out.printf("| %-17s | %-15s | %-18s |", "Ревизионный номер", "Тип изделия", "Адрес расположения");
        System.out.println("\n+-------------------+-----------------+--------------------+");

        try (Connection conn = DriverManager.getConnection(url, username, password);
             Statement statement = conn.createStatement()) {
             ResultSet result = statement.executeQuery("SELECT * FROM audit_department");

            while (result.next()) {
                String num = result.getString(1);
                String type = result.getString(2);
                String address = result.getString(3);

                System.out.printf("| %-17s | %-15s | %-18s |", num, type, address);
                System.out.println("\n+-------------------+-----------------+--------------------+");
            }

        } catch (SQLException ex) {
            System.out.println("Cannot connect to DB: " + ex.getMessage());
        }
    }
}