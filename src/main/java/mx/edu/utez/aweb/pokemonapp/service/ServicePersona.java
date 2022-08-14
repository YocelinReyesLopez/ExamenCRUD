package mx.edu.utez.aweb.pokemonapp.service;

import mx.edu.utez.aweb.pokemonapp.model.persona.BeanPersona;
import mx.edu.utez.aweb.pokemonapp.model.persona.DaoPersona;
import mx.edu.utez.aweb.pokemonapp.utils.ResultAction;

import java.util.List;

public class ServicePersona {
    DaoPersona daoPersona = new DaoPersona();

    public List<BeanPersona> getAll(){
        return daoPersona.findAll();
    }

    public ResultAction save(BeanPersona persona){
        ResultAction result = new ResultAction();
        if (daoPersona.save(persona)){
            result.setResult(true);
            result.setMessage("Registro exitoso");
            result.setStatus(200);
        }else {
            result.setResult(false);
            result.setMessage("Ocurrió un error, intenta de nuevo");
            result.setStatus(400);
        }
        return result;
    }

    public BeanPersona getPersona(Long id){
        return daoPersona.findOne(id);
    }

    public ResultAction update(BeanPersona persona){
        ResultAction result = new ResultAction();
        if (daoPersona.update(persona)){
            result.setStatus(200);
            result.setResult(false);
            result.setMessage("Actualización exitosa");
        }else{
            result.setStatus(400);
            result.setResult(true);
            result.setMessage("Ocurrió un error al actualizar");
        }
        return result;
    }

    public ResultAction delete(String id){
        ResultAction result = new ResultAction();
        try{
            if (daoPersona.delete(Long.parseLong(id))){
                result.setStatus(200);
                result.setResult(false);
                result.setMessage("Persona eliminada correctamente");
            }else{
                result.setStatus(400);
                result.setResult(true);
                result.setMessage("Ocurrió un error, intenta de nuevo");
            }
        }catch (NumberFormatException e){
            result.setStatus(400);
            result.setResult(true);
            result.setMessage("Ocurrió un error");
        }
        return result;
    }
}
//YocelinReyes3C