�
 TLABISOLANTES 0�  TPF0�TLabIsolantesLabIsolantesCaption	IsolantesPixelsPerInch`
TextHeight �TToolBarToolBar1 �TToolButtonToolButton2ExplicitWidth@  �TToolButtonToolButton5ExplicitWidthB  �TToolButtonToolButton9ExplicitWidthW  �TToolButtonToolButton6ExplicitWidthG  �TToolButtonToolButton1ExplicitWidthS  �TToolButtonToolButton8ExplicitWidthB  �TToolButtonToolButton3ExplicitWidthR  �TToolButtontbOrderExplicitWidthG  �TToolButtontbOpcaoExplicitWidthM  �TToolButtonToolButton10ExplicitWidthZ   �TPanelPanel1 �TPageControlpctlFind �	TTabSheettsQuery �TBitBtnBitBtn2
Glyph.Data
          �	TTabSheettsFindExplicitLeftExplicitTopExplicitWidthExplicitHeight< �TBitBtnBitBtn1
Glyph.Data
            �TPanelPanel2 �TPageControlPageControl1 �	TTabSheet	TabSheet1Caption	Isolantes    �TZQueryIBrwSrc
Connection	DM.DesignSQL.Strings#select recno, nome from labisolante Sequence
ZSequence1SequenceFieldrecno TIntegerFieldIBrwSrcrecnoDisplayLabelIsolante	FieldNamerecnoRequired	  TStringFieldIBrwSrcnomeDisplayLabelNome	FieldNamenomeRequired	Size<   �TZUpdateSQLzIBrwSrcDeleteSQL.StringsDELETE FROM labisolanteWHERE   labisolante.recno = :OLD_recno InsertSQL.StringsINSERT INTO labisolante  (recno, nome)VALUES  (:recno, :nome) ModifySQL.StringsUPDATE labisolante SET nome = :nomeWHERE   labisolante.recno = :OLD_recno 	ParamDataDataType	ftUnknownNamenome	ParamType	ptUnknown DataType	ftUnknownName	OLD_recno	ParamType	ptUnknown DataType	ftUnknownNamerecno	ParamType	ptUnknown    
TZSequence
ZSequence1
Connection	DM.DesignSequenceNamepublic.labisolante_recno_seqLeftpTop0   