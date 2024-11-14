package modele;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import controleur.Ticket;

public class Modele {
    // Instanciation de la classe Connexion
    private static Connexion uneConnexion = new Connexion("localhost", "unisphere", "root", "");

    /************ Gestion des entreprises ***********/
    public static void insertTicket(Ticket unTicket) {
        // Logic to insert a ticket into the database
    }

    public static ArrayList<Ticket> selectAllTickets() {
        ArrayList<Ticket> lesTickets = new ArrayList<>();
        Ticket unT = new Ticket("54", "Jean-marc", "Aidez-moi avec mon linge", null);
        lesTickets.add(unT);
        return lesTickets;
    }

    /********** Gestion de la connexion ******/
    public static boolean verifConnexion(String email, String mdp) {
        if (email == null || mdp == null || email.isEmpty() || mdp.isEmpty()) {
            System.out.println("Erreur : Email ou mot de passe vide");
            return false;
        }

        // Connection to the database to verify credentials
        uneConnexion.seConnecter();
        String query = "SELECT * FROM user WHERE email = ? AND password = ?";
        try (PreparedStatement stmt = uneConnexion.getMaConnexion().prepareStatement(query)) {
            stmt.setString(1, email);
            stmt.setString(2, mdp);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                return true;  // Credentials are valid
            } else {
                return false;  // Invalid credentials
            }
        } catch (Exception e) {
            e.printStackTrace();
            return false;  // In case of any SQL or connection error
        } finally {
            uneConnexion.seDeConnecter();
        }
    }
}
