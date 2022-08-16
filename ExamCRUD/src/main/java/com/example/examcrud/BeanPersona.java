package com.example.examcrud;

public class BeanPersona {

    private long id;
    private String nombre;
    private String surname;
    private String curp;
    private String birthday;

    public BeanPersona() {
    }

    public BeanPersona(long id, String nombre, String surname, String curp, String birthday) {
        this.id = id;
        this.nombre = nombre;
        this.surname = surname;
        this.curp = curp;
        this.birthday = birthday;
    }

    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getCurp() {
        return curp;
    }

    public void setCurp(String curp) {
        this.curp = curp;
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday;
    }
}

//Yocelin Reyes 3c