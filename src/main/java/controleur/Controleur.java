package controleur;

import modele.Modele;

public class Controleur {

    /********** Gestion des tickets******/
    public static void insertTicket(Ticket unTicket) {
        // Control data
        // Call to Model to insert the ticket
        Modele.insertTicket(unTicket);
    }

    public static boolean verifConnexion(String email, String mdp) {
        // Call to model to verify user credentials
        return Modele.verifConnexion(email, mdp);
    }
}
