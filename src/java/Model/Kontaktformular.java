/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author ExaShox
 */
public class Kontaktformular {

    private String firstname, lastname, date, description, message;
    private int id;
    
    public Kontaktformular() {}

    public void showMeWhatYouGot() {
        System.out.println("ID: " + id);
        System.out.println("Vorname: " + firstname);
        System.out.println("Nachname: " + lastname);
        System.out.println("Datum: " + date);
        System.out.println("Beschreibung: " + description);
        System.out.println("Nachricht: " + message);
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }
    
    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}
