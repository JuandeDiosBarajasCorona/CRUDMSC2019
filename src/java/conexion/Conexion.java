package conexion;

import org.springframework.jdbc.datasource.DriverManagerDataSource;

public class Conexion {
    
    public DriverManagerDataSource conectar() {
        DriverManagerDataSource nav = new DriverManagerDataSource();
        /*
        nav.setDriverClassName("com.mysql.jdbc.Driver");
        nav.setUrl("jdbc:mysql://localhost:3306/msc2019");
        nav.setUsername("root");
        nav.setPassword("");
        */
        
        nav.setDriverClassName("com.mysql.jdbc.Driver");
        nav.setUrl("jdbc:mysql://juandebarco.com:3306/juandeba_crudmsc2019");
        nav.setUsername("juandeba_admin");
        nav.setPassword("time in london");
        
        return nav;
    }
}
