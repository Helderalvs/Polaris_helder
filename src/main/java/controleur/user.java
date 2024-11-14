package controleur;

public class user {
    private int iduser;
    private String nom;
    private String prenom;
    private String etablissement;
    private String email;
    private String mdp;
    private String role_id;
    
    
	public user(int iduser, String nom, String prenom, String etablissement, String email, String mdp, String role_id) {
		super();
		this.iduser = iduser;
		this.nom = nom;
		this.prenom = prenom;
		this.etablissement = etablissement;
		this.email = email;
		this.mdp = mdp;
		this.role_id = role_id;
	}
	
	public user(String nom, String prenom, String etablissement, String email, String mdp, String role_id) {
		super();
		this.iduser = 0;
		this.nom = nom;
		this.prenom = prenom;
		this.etablissement = etablissement;
		this.email = email;
		this.mdp = mdp;
		this.role_id = role_id;
	}

	public int getIduser() {
		return iduser;
	}

	public void setIduser(int iduser) {
		this.iduser = iduser;
	}

	public String getNom() {
		return nom;
	}

	public void setNom(String nom) {
		this.nom = nom;
	}

	public String getPrenom() {
		return prenom;
	}

	public void setPrenom(String prenom) {
		this.prenom = prenom;
	}

	public String getEtablissement() {
		return etablissement;
	}

	public void setEtablissement(String etablissement) {
		this.etablissement = etablissement;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getMdp() {
		return mdp;
	}

	public void setMdp(String mdp) {
		this.mdp = mdp;
	}

	public String getRole_id() {
		return role_id;
	}

	public void setRole_id(String role_id) {
		this.role_id = role_id;
	}
	
	
    
    
    


}
