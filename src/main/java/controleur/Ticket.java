package controleur;

public class Ticket {
    private int idTicket;
    private String nom;
    private String message;
    private String categorie;
    private String nomEtudiant;

    // Constructeur avec tous les champs
    public Ticket(int idTicket, String nom, String message, String categorie, String nomEtudiant) {
        this.idTicket = idTicket;
        this.nom = nom;
        this.message = message;
        this.categorie = categorie;
        this.nomEtudiant = nomEtudiant;
    }

    // Constructeur sans idTicket
    public Ticket(String nom, String message, String categorie, String nomEtudiant) {
        this(0, nom, message, categorie, nomEtudiant);
    }

    // Getters et Setters pour tous les champs
    public int getIdTicket() {
        return idTicket;
    }

    public void setIdTicket(int idTicket) {
        this.idTicket = idTicket;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getCategorie() {
        return categorie;
    }

    public void setCategorie(String categorie) {
        this.categorie = categorie;
    }

    public String getNomEtudiant() {
        return nomEtudiant;
    }

    public void setNomEtudiant(String nomEtudiant) {
        this.nomEtudiant = nomEtudiant;
    }

    @Override
    public String toString() {
        return "Ticket [idTicket=" + idTicket + ", nom=" + nom + ", message=" + message + 
               ", categorie=" + categorie + ", nomEtudiant=" + nomEtudiant + "]";
    }
}
