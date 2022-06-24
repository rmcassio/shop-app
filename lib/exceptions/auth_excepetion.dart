class AuthExcepetion implements Exception {
  static const Map<String, String> errors = {
    'EMAIL_EXISTS': 'Email já cadastrado! Tente fazer o login.',
    'OPERATION_NOT_ALLOWED': 'Operação não permitida.',
    'TOO_MANY_ATTEMPTS_TRY_LATER':
        'Muitas tentativas. Aguarde um momento e tente novamente',
    'EMAIL_NOT_FOUND': 'Email não encontrado.',
    'INVALID_PASSWORD': 'A senha está incorreta.',
    'USER_DISABLED': 'Esse usuário está temporariamente desabilitado',
  };

  final String key;

  AuthExcepetion(this.key);

  @override
  String toString() {
    return errors[key] ?? 'Ocorreu um erro no processo de autenticação';
  }
}
