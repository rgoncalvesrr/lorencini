�
 TLABUNIDADE 0G  TPF0�TLabUnidade
LabUnidadeCaptionUnidades de EnsaiosPixelsPerInch`
TextHeight �TToolBarToolBar1 �TToolButtonToolButton2ExplicitWidth@  �TToolButtonToolButton5ExplicitWidthB  �TToolButtonToolButton9ExplicitWidthW  �TToolButtonToolButton6ExplicitWidthG  �TToolButtonToolButton1ExplicitWidthS  �TToolButtonToolButton8ExplicitWidthB  �TToolButtonToolButton3ExplicitWidthR  �TToolButtontbOrderExplicitWidthG  �TToolButtontbOpcaoExplicitWidthM  �TToolButtonToolButton10ExplicitWidthZ   �TPanelPanel1 �TPageControlpctlFind �	TTabSheettsQueryExplicitLeftExplicitTopExplicitWidthExplicitHeight< �TBitBtnBitBtn2
Glyph.Data
          �	TTabSheettsFindExplicitLeftExplicitTopExplicitWidthExplicitHeight< �TBitBtnBitBtn1
Glyph.Data
            �TPanelPanel2 �TPageControlPageControl1 �	TTabSheet	TabSheet1CaptionUnidadesExplicitLeftExplicitTopExplicitWidthExplicitHeightY    �TZQueryIBrwSrc
Connection	DM.DesignSortedFieldsdescriSQL.Stringsselect * from labunidades IndexFieldNames
descri Asc TIntegerFieldIBrwSrcrecnoDisplayLabelUnidade	FieldNamerecnoRequired	  TStringFieldIBrwSrcdescriDisplayLabel   Descrição	FieldNamedescriRequired	Size   �TZUpdateSQLzIBrwSrcDeleteSQL.StringsDELETE FROM labunidadesWHERE   labunidades.recno = :OLD_recno InsertSQL.StringsINSERT INTO labunidades  (recno, descri)VALUES  (:recno, :descri) ModifySQL.StringsUPDATE labunidades SET  descri = :descriWHERE   labunidades.recno = :OLD_recno 	ParamDataDataType	ftUnknownNamedescri	ParamType	ptUnknown DataType	ftUnknownName	OLD_recno	ParamType	ptUnknown DataType	ftUnknownNamerecno	ParamType	ptUnknown    
TZSequence
ZSequence1
Connection	DM.DesignSequenceNamepublic.labunidades_recno_seqLeftpTop0   