package controller;

import conexion.Conexion;
import java.text.ParseException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Controller;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.request;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class Controlador {

    Conexion con = new Conexion();
    JdbcTemplate jdbctemplate = new JdbcTemplate(con.conectar());
    ModelAndView nav = new ModelAndView();

    // Método para obtener un listado de registros de la tabla empleados
    @RequestMapping("index.htm")
    public ModelAndView listarEmpleados() {
        // Cadena de SQL
        String query = "SELECT * FROM `empelado`";

        // Ejecución del Query
        List datos = this.jdbctemplate.queryForList(query);

        // Crear el ID de los datos
        nav.addObject("lista", datos);

        // Vincular la vista para el envio de datos
        nav.setViewName("index");

        return nav;
    }

    @RequestMapping(value = "agregar.htm", method = RequestMethod.POST)
    public String Agregar(HttpServletRequest request) {
        String clave = String.valueOf(request.getParameter("clave"));
        String nombre = String.valueOf(request.getParameter("nombre"));
        String sueldo = String.valueOf(request.getParameter("sueldo"));
        System.out.println(clave);
        System.out.println(nombre);
        System.out.println(sueldo);

        String query = "INSERT INTO empelado (clave, nombre, sueldo) VALUES (" + clave + ",'" + nombre + "'," + sueldo + ")";
        this.jdbctemplate.execute(query);

        return "redirect:index.htm";
    }

    @RequestMapping(value="/editar.htm", method = RequestMethod.GET)
    public ModelAndView editar(@RequestParam String clave){
        System.out.println("askjasfasfasf"+clave);        
        String query = "SELECT * FROM `empelado` WHERE clave="+clave;
        List datos = this.jdbctemplate.queryForList(query);
        nav.addObject("lista", datos);
        nav.setViewName("editar");
        return nav;       
    }
    
     @RequestMapping(value = "doedit.htm", method = RequestMethod.POST)
    public String doedit(HttpServletRequest request) {
        String clave = String.valueOf(request.getParameter("clave"));
        String nombre = String.valueOf(request.getParameter("nombre"));
        String sueldo = String.valueOf(request.getParameter("sueldo"));
        System.out.println(clave);
        System.out.println(nombre);
        System.out.println(sueldo);

        String query = "UPDATE empelado SET nombre = '"+nombre+"', sueldo = "+sueldo+" WHERE clave = "+clave;
        this.jdbctemplate.execute(query);

        return "redirect:index.htm";
    }
    @RequestMapping(value="/delete.htm", method = RequestMethod.GET)
    public String delete(@RequestParam String clave){
        System.out.println(clave);        
        String query = "DELETE FROM `empelado` WHERE clave="+clave;
        this.jdbctemplate.execute(query);
        return "redirect:index.htm";       
    }
    
}

