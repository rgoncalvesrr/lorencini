�
 TLABTENSAO 0�  TPF0�
TLabTensao	LabTensaoCaption   Classe de TensãoPixelsPerInch`
TextHeight �TToolBarToolBar1 �TToolButtonToolButton2ExplicitWidth   �TToolButtonToolButton5ExplicitWidth   �TToolButtonToolButton9ExplicitWidth   �TToolButtonToolButton6ExplicitWidth   �TToolButtonToolButton1ExplicitWidth   �TToolButtonToolButton8ExplicitWidth   �TToolButtonToolButton3ExplicitWidth   �TToolButtontbOrderExplicitWidthG  �TToolButtontbReportExplicitWidth   �TToolButtontbOpcaoExplicitWidth   �TToolButtonToolButton10ExplicitWidth    �TPanelPanel1 �TPageControlpctlFind �	TTabSheettsQueryExplicitLeftExplicitTopExplicitWidthAExplicitHeight<  �	TTabSheettsFindExplicitLeftExplicitTopExplicitWidthAExplicitHeight<    �TPanelPanel2 �TPageControlPageControl1 �	TTabSheet	TabSheet1Caption   Classes de TensãoExplicitLeftExplicitTopExplicitWidth@ExplicitHeightY    �TZQueryIBrwSrc
Connection	DM.DesignSQL.Stringsselect * from labtensao Sequence
ZSequence1SequenceFieldrecno TStringFieldIBrwSrcclasseDisplayLabelClasse	FieldNameclasseProviderFlags
pfInUpdate	pfInWherepfInKey Required	Size  TFloatField
IBrwSrcminDisplayLabel   Tensão Mínima	FieldNameminRequired	DisplayFormat#,0.###0  TFloatField
IBrwSrcmaxDisplayLabel   Tensão Máxima	FieldNamemaxRequired	DisplayFormat#,0.###0  TIntegerFieldIBrwSrcrecno	FieldNamerecnoRequired	Visible   �TZUpdateSQLzIBrwSrcDeleteSQL.StringsDELETE FROM labtensaoWHERE   labtensao.classe = :OLD_classe InsertSQL.StringsINSERT INTO labtensao  (classe, min, max, recno)VALUES  (:classe, :min, :max, :recno) ModifySQL.StringsUPDATE labtensao SET  classe = :classe,  min = :min,  max = :max,  recno = :recnoWHERE   labtensao.classe = :OLD_classe 	ParamDataDataType	ftUnknownNameclasse	ParamType	ptUnknown DataType	ftUnknownNamemin	ParamType	ptUnknown DataType	ftUnknownNamemax	ParamType	ptUnknown DataType	ftUnknownNamerecno	ParamType	ptUnknown DataType	ftUnknownName
OLD_classe	ParamType	ptUnknown    
TZSequence
ZSequence1
Connection	DM.DesignSequenceNamepublic.labtensao_recno_seqLeftpTop0   