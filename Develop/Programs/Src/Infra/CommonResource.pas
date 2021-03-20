unit CommonResource;

interface

ResourceString
  SAbstractError = 'A classe %s é abstrata e não pode ser instanciada';
  SMethotNotImplemented = 'Método %s não implementado';
  SDBSQLEmpty = 'Instrução de consulta vazia. Método: %s.';
  SDBParserNotSupported = 'O driver %s. não suporta parser da instrução SQL';
  SIODirError = 'O sistema reportou o erro %d ao tentar criar o diretório %s';

  SDebug00001 = 'Instrução de Saída (empresa %s. filial %d): %s';
  SDebug00002 = 'Instrução de Entrada: %s';
  SDebug00003 = 'Instrução %s criada em modo debug';
  SDebug00004 = 'Instrução %s liberada da memória';
  SDebug00005 = 'Início da instrução %s, Término %s, Tempo decorrido %s';

  SLogLevelDebug   = 'DBG ';
  SLogLevelNotice  = 'INF ';
  SLogLevelWarning = 'ATE ';
  SLogLevelError   = 'ERR ';
  SLoggerTitleDateTime = 'Ocorrência';
  SLoggerTitleLevel = 'Tipo';
  SLoggerTitleProviderName = 'Origem';
  SLoggerTitleCaption = 'Log';

  SAssertRegistrationEmpty = '%s está vazio';
  SAssertRegistrationInvalidLen = 'O %s %s tem tamanho inválido';
  SAssertRegistrationInvalid = 'O %s %s é inválido';

  SCFAssertLenMin = 'O tamanho da palavra "%s" é menor que %d caracteres';
  SCFAssertLenMax = 'O tamanho da palavra "%s" é maior que %d caracteres';
  SCFAssertLenBetween = 'O tamanho da palavra "%s" deve estar entre %d e %d caracteres';
  SCFAssertStrNotEmpty = 'String não pode ser vazia';
  SCFAssertStrNotEquals = 'A string "%s" difere da string "%s"';

implementation

end.
