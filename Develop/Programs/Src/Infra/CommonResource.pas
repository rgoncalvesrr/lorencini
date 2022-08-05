unit CommonResource;

interface

ResourceString
  SAbstractError = 'A classe %s � abstrata e n�o pode ser instanciada';
  SMethotNotImplemented = 'M�todo %s n�o implementado';
  SDBSQLEmpty = 'Instru��o de consulta vazia. M�todo: %s.';
  SDBParserNotSupported = 'O driver %s. n�o suporta parser da instru��o SQL';
  SIODirError = 'O sistema reportou o erro %d ao tentar criar o diret�rio %s';

  SDebug00001 = 'Instru��o de Sa�da (empresa %s. filial %d): %s';
  SDebug00002 = 'Instru��o de Entrada: %s';
  SDebug00003 = 'Instru��o %s criada em modo debug';
  SDebug00004 = 'Instru��o %s liberada da mem�ria';
  SDebug00005 = 'In�cio da instru��o %s, T�rmino %s, Tempo decorrido %s';

  SLogLevelDebug   = 'DBG ';
  SLogLevelNotice  = 'INF ';
  SLogLevelWarning = 'ATE ';
  SLogLevelError   = 'ERR ';
  SLoggerTitleDateTime = 'Ocorr�ncia';
  SLoggerTitleLevel = 'Tipo';
  SLoggerTitleProviderName = 'Origem';
  SLoggerTitleCaption = 'Log';

  SAssertRegistrationEmpty = '%s est� vazio';
  SAssertRegistrationInvalidLen = 'O %s %s tem tamanho inv�lido';
  SAssertRegistrationInvalid = 'O %s %s � inv�lido';

  SCFAssertLenMin = 'O tamanho da palavra "%s" � menor que %d caracteres';
  SCFAssertLenMax = 'O tamanho da palavra "%s" � maior que %d caracteres';
  SCFAssertLenBetween = 'O tamanho da palavra "%s" deve estar entre %d e %d caracteres';
  SCFAssertStrNotEmpty = 'String n�o pode ser vazia';
  SCFAssertStrNotEquals = 'A string "%s" difere da string "%s"';

implementation

end.
