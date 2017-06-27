/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ExaShox
 */
public class FormularListe {

    private final List<Kontaktformular> kontaktformularList = new ArrayList<>();
    
    public FormularListe() {}
    
    /**
     * Addet Kontaktformular
     *
     * @param kontaktformular
     */
    public void add(Kontaktformular kontaktformular) {
        kontaktformularList.add(kontaktformular);
    }
    
    public List<Kontaktformular> getList() {
        return kontaktformularList;
    }

    public void consolenOutput() {
        int i = 0;
        for (Kontaktformular kontaktformular : kontaktformularList) {
            System.out.println("Nr. " + ++i);
            kontaktformular.showMeWhatYouGot();
        }
    }
}
