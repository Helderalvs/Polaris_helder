<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page import="controleur.*" %>
<%@ page import="java.util.ArrayList" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Page de Connexion</title>
    <style>
        /* Style général pour centrer le formulaire */
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

        /* Style pour les champs d'entrée */
        table {
            width: 100%;
        }

        td {
            padding: 8px;
            color: #333;
        }

        input[type="text"], input[type="password"] {
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
    <h3> Connexion </h3>
    <form method="post">
        <table>
            <tr>
                <td>Email</td>
                <td><input type="text" name="email" required></td>
            </tr>
            <tr>
                <td>Mdp</td>
                <td><input type="password" name="password" required></td>
            </tr>
            <tr>
                <td><input type="reset" name="Annuler" value="Annuler"></td>
                <td><input type="submit" name="Valider" value="Se connecter"></td>
            </tr>
        </table>
    </form>

    <%
        // Handling form submission
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        if (email != null && password != null) {
            boolean isValid = Controleur.verifConnexion(email, password);
            if (isValid) {
                out.println("<p style='color:green;'>Connexion réussie !</p>");
                // Redirect to a different page or dashboard here
            } else {
                out.println("<p style='color:red;'>Email ou mot de passe incorrect.</p>");
            }
        }
    %>
</center>

</body>
</html>
