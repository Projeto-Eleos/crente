<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" href="public/favicon.svg" type="image/svg+xml">
    <link rel="stylesheet" href="styles/password-recover.css">
    <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>
    <title>Recuperação de senha</title>
</head>
<body>
    <main>
        <div class="container">
            <div class="form-box">
                <div class="register-container">
                    <div class="top">
                        <h1>Esqueceu a senha?</h1>
                        <p>Basta fornecer o endereço de e-mail associado à sua conta e enviaremos instruções detalhadas sobre como criar uma nova senha.</p>
                    </div>
                    <form method="POST" action="authPasswordChange">
                        <div class="input-box">
                            <label for="email">Email:</label>
                            <input type="email" class="input-field" name='email' placeholder="Digite seu endereço de email!" required>
                            <i class="bx bx-envelope"></i>
                            <span class="invalid-email">Email inválido!</span>
                        </div>
                        <div class="input-box" id="input_cod" style="display: none;">
                            <label for="cod">Insira o código enviado ao email informado:</label>
                            <input type="text" class="input-field" name="cod" placeholder="Digite o código enviado ao seu email!" required>
                            <i class='bx bx-message-dots'></i>
                            <i class="fa-regular fa-id-card"></i>
                        </div>
                        <div class="input-box">
                            <input type="submit" class="submit" id="button" value="Continuar">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </main>
    <script>
        function validarEmail(email) {
            // Expressão regular para verificar o formato do e-mail
            var re = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;
            return re.test(email);
        }

        let button = document.querySelector("#button");
        button.addEventListener("click", (e) => {
            e.preventDefault(); // Evita o envio do formulário

            const email = document.querySelector("[name='email']").value;
            const email_invalid = document.querySelector("span.invalid-email");
            const inputCod = document.querySelector("#input_cod");

            if (!validarEmail(email)) {
                email_invalid.style.display = "flex";
                inputCod.style.display = "none"; // Oculta o campo de código se o email for inválido
            } else {
                email_invalid.style.display = "none"; // Oculta o <span> de email inválido
                inputCod.style.display = "block"; // Exibe o campo de código se o email for válido
            }
            
        });

    </script>
</body>
</html>