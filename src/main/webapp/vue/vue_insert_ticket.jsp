<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    /* Style g�n�ral pour centrer le formulaire */
    body {
        font-family: Arial, sans-serif;
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
        margin: 0;
        background-color: #f5f5f5;
    }

    /* Style pour le formulaire */
    form {
        background-color: #ffffff;
        padding: 20px;
        border-radius: 8px;
        box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        width: 300px;
        text-align: left;
    }

    h3 {
        text-align: center;
        color: #333;
    }

    /* Style pour les tickets (similaire � ceux sur le c�t� gauche de l'image) */
    .ticket {
        background-color: #f79345;
        color: white;
        padding: 10px;
        margin-bottom: 10px;
        text-align: center;
        border-radius: 8px;
        font-weight: bold;
        cursor: pointer;
    }

    /* Style pour les champs d'entr�e */
    table {
        width: 100%;
    }

    td {
        padding: 8px;
        color: #333;
    }

    input[type="text"] {
        width: 100%;
        padding: 8px;
        margin: 4px 0;
        box-sizing: border-box;
        border: 1px solid #ddd;
        border-radius: 4px;
    }

    /* Style pour les boutons */
    input[type="reset"], input[type="submit"] {
        width: 100%;
        padding: 8px;
        border: none;
        border-radius: 4px;
        color: white;
        font-weight: bold;
        cursor: pointer;
    }

    input[type="reset"] {
        background-color: #f44336;
    }

    input[type="submit"] {
        background-color: #4CAF50;
    }

    /* Hover effect for buttons */
    input[type="reset"]:hover {
        background-color: #d32f2f;
    }

    input[type="submit"]:hover {
        background-color: #388e3c;
    }
</style>
</head>
<body>

<center> 
    <h3> Cr�e un ticket </h3>
    

    <form method="post">
        <table>
            <tr> 
                <td>ID ticket</td>
                <td><input type="text" name="idticket"></td>
            </tr>
          <tr> 
    <td>Cat�gorie</td>
    <td>
        <select name="categorie">
            <option value="technologie">Informatique</option>
            <option value="sante">Sant�</option>
            <option value="education">P�dagique</option>
            <option value="finance">Autres</option>
         
            <!-- Ajoutez d'autres options selon vos besoins -->
        </select>
    </td>
</tr>
            <tr> 
                <td>Nom �tudiant</td>
                <td><input type="text" name="nometudiant"></td>
            </tr>
            <tr> 
                <td>Message</td>
                <td><input type="text" name="message"></td>
            </tr>
            <tr> 
                <td><input type="reset" name="Annuler" value="Annuler"></td>
                <td><input type="submit" name="Valider" value="Valider"></td>
            </tr>
        </table>
    </form>
</center>

</body>
</html>
