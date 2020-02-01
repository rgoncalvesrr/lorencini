unit iTypes;

interface

uses classes, zdataset, db;

type
  TScreenType = (stSimple, stMasterDetail); {Indica se a tela de edição é mestre/detalhe}
  
  TDataSetEvent = procedure (Sender: TObject; DataSet: TZQuery) of object; // Evento DataSet
  TDataSetBeforeEvent = procedure (Sender: TObject; DataSet: TZQuery; var AllowPost: Boolean) of object; // Evento DataSet
  TDataSetFieldEvent = procedure (Sender: TObject; DataSet: TZQuery; Field: TField) of object; // Evento DataSet

  //Tela de edição deve ser encerrada após inclusão / alteração
  TCloseAfterPost = (aapInsert, aapEdit);
  TCloseAfterPosts = set of TCloseAfterPost;
implementation

end.
