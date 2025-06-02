String? usuario = PegarUsuario();
String? resposta =
    (usuario != null)
        ? "Usuario existe: $usuario"
        : "Usuario não existe: $usuario";

void main() {
  print(resposta);
}

String? PegarUsuario() => null;
