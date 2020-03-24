/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tp2.lab4;

import entities.Pais;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

/**
 *
 * @author flocy
 */
public class TP2Lab4 {

    /**
     * @param args the command line arguments
     * @throws java.lang.Exception
     */
    public static void main(String[] args) throws Exception {
        
        // Creo el entity manager para hacer persistencia
        EntityManagerFactory emf = Persistence.createEntityManagerFactory("TP2-lab4PU");
        EntityManager em = emf.createEntityManager();
        
        // Creo el JSONParser para pasar la URL a un objeto/arreglo JSON
        JSONParser parser = new JSONParser();

        String restUrl = "https://restcountries.eu/rest/v2/callingcode/";

        Pais paisSql = new Pais();
        
        for (int codigo = 1; codigo <= 300; codigo++) {
            try {
                // Creo la ruta al JSON agregando el código
                URL rutaJson = new URL(restUrl + codigo); 
                System.out.println(rutaJson);
                
                // Creo la conexión con la ruta
                URLConnection yc = rutaJson.openConnection();
                
                // Creo el lector para la ruta
                BufferedReader in = new BufferedReader(new InputStreamReader(yc.getInputStream()));
                
                // El mismo código puede tener varios paises, lo traigo como un arreglo
                JSONArray a = (JSONArray) parser.parse(in.readLine());
                
                //Chequeo que el arreglo no sea nulo
                if (a != null) {
                    //Recorro cada elemento del arreglo de Json
                    for (Object object : a) {
                        //Comienza la transacción
                        em.getTransaction().begin();
                        //Creo el objeto JSON
                        JSONObject paisJson = (JSONObject) object;
                        
                        //Lleno mi objeto entidad Pais (paisSql) con los datos del objeto JSON (paisJson)
                        paisSql.setNombrePais((String) paisJson.get("name"));
                        paisSql.setCapitalPais((String) paisJson.get("capital"));
                        paisSql.setPoblacion((Long) paisJson.get("population"));
                        paisSql.setRegion((String) paisJson.get("region"));
                        // La latitud y longitud son una lista en el JSON, la traigo y asígno la posición a c/u
                        List latlong = (List) paisJson.get("latlng");
                        paisSql.setLatitud((double) latlong.get(0));
                        paisSql.setLongitud((double) latlong.get(1));
                        paisSql.setCodigoPais(codigo);

                        //System.out.println(paisSql.toString() + " || " + codigo + ".\n");
                        
                        // em.merge() hace un UPDATE si el id existe o un INSERT si no existe en la base de datos
                        em.merge(paisSql);
                        em.flush();
                        em.getTransaction().commit();
                    }
                } else {
                    //Si el código no existe continúo con el siguiente
                    codigo++;
                    continue;
                }
                
                // Cierro el buffered reader
                in.close();

            } catch (Exception e) {
                System.out.println("No existe pais con ese código");
            }

        }
        
        // Cierro la conexión con entity manager y entity manager factory
        em.close();
        emf.close();

    }

}
