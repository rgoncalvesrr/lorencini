unit iTypes;

interface

uses classes, zdataset, db;

type
  TScreenType = (stSimple, stMasterDetail); {Indica se a tela de edi��o � mestre/detalhe}
  
  TDataSetEvent = procedure (Sender: TObject; DataSet: TZQuery) of object; // Evento DataSet
  TDataSetBeforeEvent = procedure (Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean) of object; // Evento DataSet
  TDataSetFieldEvent = procedure (Sender: TObject; DataSet: TZQuery; Field: TField) of object; // Evento DataSet

  //Tela de edi��o deve ser encerrada ap�s inclus�o / altera��o
  TCloseAfterPost = (aapInsert, aapEdit);
  TCloseAfterPosts = set of TCloseAfterPost;
implementation

end.
