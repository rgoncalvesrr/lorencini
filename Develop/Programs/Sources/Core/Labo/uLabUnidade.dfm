�
 TLABUNIDADE 0~  TPF0�TLabUnidade
LabUnidadeCaptionUnidades de EnsaiosConstraints.MinWidthUPixelsPerInch`
TextHeight �TPanelPanel1 �TPageControlpctlFind �	TTabSheettsQueryExplicitLeftExplicitTopExplicitWidth3ExplicitHeightK  �	TTabSheettsFindExplicitLeftExplicitTopExplicitWidth3ExplicitHeightK    �TPanelPanel2 �TPageControlPageControl1 �	TTabSheet	TabSheet1CaptionUnidadesExplicitLeftExplicitTopExplicitWidth7ExplicitHeight�     �TControlBar
ctrlBarTop �TToolBarToolBar1 �TToolButtonToolButton2ExplicitWidth   �TToolButtonToolButton5ExplicitWidth   �TToolButtonToolButton9ExplicitWidth   �TToolButtonToolButton6ExplicitWidth   �TToolButtonToolButton1ExplicitWidth   �TToolButtonToolButton8ExplicitWidth   �TToolButtonToolButton3ExplicitWidth   �TToolButtontbOrderExplicitWidthL  �TToolButtontbReportExplicitWidth   �TToolButtontbOpcaoExplicitWidth   �TToolButtonToolButton10ExplicitWidth     �TZQueryIBrwSrc
Connection	DM.DesignSortedFieldsdescriSQL.Stringsselect * from labunidades IndexFieldNames
descri AscSequence
ZSequence1SequenceFieldrecno TIntegerFieldIBrwSrcrecnoDisplayLabelUnidade	FieldNamerecnoRequired	  TStringFieldIBrwSrcdescriDisplayLabel   Descrição	FieldNamedescriRequired	Size   �TZUpdateSQLzIBrwSrcDeleteSQL.StringsDELETE FROM labunidadesWHERE   labunidades.recno = :OLD_recno InsertSQL.StringsINSERT INTO labunidades  (recno, descri)VALUES  (:recno, :descri) ModifySQL.StringsUPDATE labunidades SET  descri = :descriWHERE   labunidades.recno = :OLD_recno 	ParamDataDataType	ftUnknownNamedescri	ParamType	ptUnknown DataType	ftUnknownName	OLD_recno	ParamType	ptUnknown DataType	ftUnknownNamerecno	ParamType	ptUnknown    
TZSequence
ZSequence1
Connection	DM.DesignSequenceNamepublic.labunidades_recno_seqLeftpTop0   