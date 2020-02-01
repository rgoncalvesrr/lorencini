inherited Colaboradores: TColaboradores
  Caption = 'Cadastro de colaboradores'
  ClientHeight = 379
  ClientWidth = 636
  Constraints.MinWidth = 645
  ExplicitWidth = 652
  ExplicitHeight = 417
  PixelsPerInch = 96
  TextHeight = 15
  inherited StatusBar1: TStatusBar
    Top = 347
    Width = 630
    Height = 29
    ExplicitTop = 347
    ExplicitWidth = 630
    ExplicitHeight = 29
  end
  inherited Panel1: TPanel
    Width = 636
    ExplicitWidth = 636
    inherited pctlFind: TPageControl
      Width = 626
      ExplicitWidth = 626
      inherited tsQuery: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 618
        ExplicitHeight = 65
      end
      inherited tsFind: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 6
        ExplicitWidth = 618
        ExplicitHeight = 65
      end
    end
  end
  inherited Panel2: TPanel
    Width = 636
    Height = 225
    ExplicitTop = 119
    ExplicitWidth = 636
    ExplicitHeight = 225
    inherited PageControl1: TPageControl
      Width = 630
      Height = 219
      ExplicitWidth = 630
      ExplicitHeight = 219
      inherited TabSheet1: TTabSheet
        ExplicitLeft = 4
        ExplicitTop = 26
        ExplicitWidth = 622
        ExplicitHeight = 189
        inherited DBGrid1: TDBGrid
          Width = 622
          Height = 189
        end
      end
    end
  end
  inherited ctrlBarTop: TControlBar
    Width = 630
    ExplicitWidth = 630
    inherited ToolBar1: TToolBar
      Width = 617
      ExplicitWidth = 617
      inherited ToolButton2: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton5: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton9: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton6: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton7: TToolButton
        ExplicitHeight = 36
      end
      inherited ToolButton1: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton8: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton3: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton4: TToolButton
        ExplicitHeight = 36
      end
      inherited tbOrder: TToolButton
        ExplicitWidth = 76
      end
      inherited tbReport: TToolButton
        ExplicitWidth = 32
      end
      inherited tbOpcao: TToolButton
        ExplicitWidth = 32
      end
      inherited ToolButton10: TToolButton
        ExplicitWidth = 32
      end
    end
  end
  inherited IBrwSrc: TZQuery
    Connection = DM.Design
    SortedFields = 'nome'
    AfterScroll = IBrwSrcAfterScroll
    UpdateObject = ZUpdateSQL1
    AfterInsert = IBrwSrcAfterInsert
    BeforePost = IBrwSrcBeforePost
    SQL.Strings = (
      'select * from tbfuncionarios')
    IndexFieldNames = 'nome Asc'
    Left = 152
    object IBrwSrcidcodigo: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'idcodigo'
    end
    object IBrwSrcnome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'nome'
      Required = True
      Size = 60
    end
    object IBrwSrccargo: TStringField
      DisplayLabel = 'Cargo'
      FieldName = 'cargo'
      Visible = False
      Size = 60
    end
    object IBrwSrctelramal: TStringField
      DisplayLabel = 'Ramal'
      FieldName = 'telramal'
      Visible = False
      Size = 60
    end
    object IBrwSrctelcelular: TStringField
      DisplayLabel = 'Celular'
      DisplayWidth = 10
      FieldName = 'telcelular'
      Size = 60
    end
    object IBrwSrcrg: TStringField
      DisplayLabel = 'RG'
      FieldName = 'rg'
      EditMask = '99.999.999-9;1;'
      Size = 50
    end
    object IBrwSrccpf: TStringField
      DisplayLabel = 'C.P.F.'
      DisplayWidth = 14
      FieldName = 'cpf'
      Required = True
      EditMask = '999.999.999-99;1;'
      Size = 50
    end
    object IBrwSrcctps: TStringField
      FieldName = 'ctps'
      Visible = False
      Size = 50
    end
    object IBrwSrcserie: TStringField
      FieldName = 'serie'
      Visible = False
      Size = 50
    end
    object IBrwSrcendereco: TStringField
      FieldName = 'endereco'
      Visible = False
      Size = 80
    end
    object IBrwSrcbairro: TStringField
      FieldName = 'bairro'
      Visible = False
      Size = 80
    end
    object IBrwSrccep: TStringField
      FieldName = 'cep'
      Visible = False
      EditMask = '99999-999;1;'
      Size = 80
    end
    object IBrwSrccidade: TStringField
      FieldName = 'cidade'
      Visible = False
      Size = 80
    end
    object IBrwSrcestado: TStringField
      Alignment = taCenter
      FieldName = 'estado'
      Visible = False
      Size = 80
    end
    object IBrwSrccbo: TStringField
      FieldName = 'cbo'
      Visible = False
      Size = 80
    end
    object IBrwSrcmensalistahorista: TStringField
      FieldName = 'mensalistahorista'
      Visible = False
      Size = 1
    end
    object IBrwSrcsalmensal: TFloatField
      FieldName = 'salmensal'
      Visible = False
    end
    object IBrwSrcqtdehorasmensais: TIntegerField
      FieldName = 'qtdehorasmensais'
      Visible = False
    end
    object IBrwSrcsalhora: TFloatField
      FieldName = 'salhora'
      Visible = False
    end
    object IBrwSrccomsemregistro: TStringField
      FieldName = 'comsemregistro'
      Visible = False
      Size = 1
    end
    object IBrwSrccontabanco: TStringField
      FieldName = 'contabanco'
      Visible = False
      Size = 50
    end
    object IBrwSrccontaagencia: TStringField
      FieldName = 'contaagencia'
      Visible = False
      Size = 50
    end
    object IBrwSrccontanumero: TStringField
      FieldName = 'contanumero'
      Visible = False
      Size = 50
    end
    object IBrwSrctelresidencia: TStringField
      FieldName = 'telresidencia'
      Visible = False
      Size = 50
    end
    object IBrwSrctelradio: TStringField
      FieldName = 'telradio'
      Visible = False
      Size = 50
    end
    object IBrwSrcvaletransporte: TStringField
      FieldName = 'valetransporte'
      Visible = False
      Size = 50
    end
    object IBrwSrcvalerefeicao: TStringField
      FieldName = 'valerefeicao'
      Visible = False
      Size = 50
    end
    object IBrwSrcmanhaentrada: TStringField
      FieldName = 'manhaentrada'
      Visible = False
      EditMask = '99:99;1;'
      Size = 50
    end
    object IBrwSrcmanhasaida: TStringField
      FieldName = 'manhasaida'
      Visible = False
      EditMask = '99:99;1;'
      Size = 50
    end
    object IBrwSrctardeentrada: TStringField
      FieldName = 'tardeentrada'
      Visible = False
      EditMask = '99:99;1;'
      Size = 50
    end
    object IBrwSrctardesaida: TStringField
      FieldName = 'tardesaida'
      Visible = False
      EditMask = '99:99;1;'
      Size = 50
    end
    object IBrwSrcqtdemunicipal: TIntegerField
      FieldName = 'qtdemunicipal'
      Visible = False
      DisplayFormat = '0'
    end
    object IBrwSrcqtdemetro: TIntegerField
      FieldName = 'qtdemetro'
      Visible = False
      DisplayFormat = '0'
    end
    object IBrwSrcqtdetrem: TIntegerField
      FieldName = 'qtdetrem'
      Visible = False
      DisplayFormat = '0'
    end
    object IBrwSrcqtdeintermunicipal: TIntegerField
      FieldName = 'qtdeintermunicipal'
      Visible = False
      DisplayFormat = '0'
    end
    object IBrwSrcdiasegunda: TStringField
      FieldName = 'diasegunda'
      Visible = False
      Size = 1
    end
    object IBrwSrcdiaterca: TStringField
      FieldName = 'diaterca'
      Visible = False
      Size = 1
    end
    object IBrwSrcdiaquarta: TStringField
      FieldName = 'diaquarta'
      Visible = False
      Size = 1
    end
    object IBrwSrcdiaquinta: TStringField
      FieldName = 'diaquinta'
      Visible = False
      Size = 1
    end
    object IBrwSrcdiasexta: TStringField
      FieldName = 'diasexta'
      Visible = False
      Size = 1
    end
    object IBrwSrcdiasabado: TStringField
      FieldName = 'diasabado'
      Visible = False
      Size = 1
    end
    object IBrwSrcdiadomingo: TStringField
      FieldName = 'diadomingo'
      Visible = False
      Size = 1
    end
    object IBrwSrcsituacao: TStringField
      FieldName = 'situacao'
      Visible = False
      Size = 50
    end
    object IBrwSrcdtadmissao: TDateTimeField
      FieldName = 'dtadmissao'
      Visible = False
    end
    object IBrwSrcdtdemissao: TDateTimeField
      FieldName = 'dtdemissao'
      Visible = False
    end
    object IBrwSrcdiarista_hs_meio_periodo: TFloatField
      FieldName = 'diarista_hs_meio_periodo'
      Visible = False
    end
    object IBrwSrcdiarista_hs_meio_periodo_vlr: TFloatField
      FieldName = 'diarista_hs_meio_periodo_vlr'
      Visible = False
    end
    object IBrwSrcdiarista_integral: TFloatField
      FieldName = 'diarista_integral'
      Visible = False
    end
    object IBrwSrcdiarista_integral_vlr: TFloatField
      FieldName = 'diarista_integral_vlr'
      Visible = False
    end
    object IBrwSrcdiarista_vlr_hora_adicional: TFloatField
      FieldName = 'diarista_vlr_hora_adicional'
      Visible = False
    end
    object IBrwSrccrq: TStringField
      DisplayLabel = 'CREA'
      FieldName = 'crq'
      Visible = False
      Size = 15
    end
    object IBrwSrcusername: TStringField
      FieldName = 'username'
      Visible = False
    end
    object IBrwSrcrecno: TIntegerField
      FieldName = 'recno'
      Required = True
    end
    object IBrwSrcassinatura: TStringField
      FieldName = 'assinatura'
      Visible = False
      Size = 50
    end
  end
  inherited zIBrwSrc: TZUpdateSQL
    Left = 96
  end
  object ZUpdateSQL1: TZUpdateSQL
    DeleteSQL.Strings = (
      'DELETE FROM tbfuncionarios'
      'WHERE'
      '  idcodigo = :OLD_idcodigo')
    InsertSQL.Strings = (
      'INSERT INTO tbfuncionarios'
      '  (nome, cargo, telramal,'
      '   telcelular, rg, cpf, ctps,'
      '   serie, endereco, bairro,'
      '   cep, cidade, estado, cbo,'
      '   mensalistahorista, salmensal, qtdehorasmensais,'
      '   salhora, comsemregistro, contabanco,'
      '   contaagencia, contanumero, telresidencia,'
      '   telradio, valetransporte, valerefeicao,'
      '   manhaentrada, manhasaida, tardeentrada,'
      '   tardesaida, qtdemunicipal, qtdemetro,'
      '   qtdetrem, qtdeintermunicipal, diasegunda,'
      '   diaterca, diaquarta, diaquinta,'
      '   diasexta, diasabado, diadomingo,'
      '   situacao, dtadmissao, dtdemissao,'
      '   diarista_hs_meio_periodo, diarista_hs_meio_periodo_vlr,'
      '   diarista_integral, diarista_integral_vlr,'
      '   diarista_vlr_hora_adicional, crq, username, assinatura)'
      'VALUES'
      
        '  (:nome, :cargo, :telramal, :telcelular, :rg, :cpf, :ctps, :ser' +
        'ie, :endereco,'
      
        '   :bairro, :cep, :cidade, :estado, :cbo, :mensalistahorista, :s' +
        'almensal,'
      
        '   :qtdehorasmensais, :salhora, :comsemregistro, :contabanco, :c' +
        'ontaagencia,'
      
        '   :contanumero, :telresidencia, :telradio, :valetransporte, :va' +
        'lerefeicao,'
      
        '   :manhaentrada, :manhasaida, :tardeentrada, :tardesaida, :qtde' +
        'municipal,'
      
        '   :qtdemetro, :qtdetrem, :qtdeintermunicipal, :diasegunda, :dia' +
        'terca,'
      
        '   :diaquarta, :diaquinta, :diasexta, :diasabado, :diadomingo, :' +
        'situacao,'
      
        '   :dtadmissao, :dtdemissao, :diarista_hs_meio_periodo, :diarist' +
        'a_hs_meio_periodo_vlr,'
      
        '   :diarista_integral, :diarista_integral_vlr, :diarista_vlr_hor' +
        'a_adicional,'
      '   :crq, :username, :assinatura)')
    ModifySQL.Strings = (
      'UPDATE tbfuncionarios SET'
      '  nome = :nome,'
      '  cargo = :cargo,'
      '  telramal = :telramal,'
      '  telcelular = :telcelular,'
      '  rg = :rg,'
      '  cpf = :cpf,'
      '  ctps = :ctps,'
      '  serie = :serie,'
      '  endereco = :endereco,'
      '  bairro = :bairro,'
      '  cep = :cep,'
      '  cidade = :cidade,'
      '  estado = :estado,'
      '  cbo = :cbo,'
      '  mensalistahorista = :mensalistahorista,'
      '  salmensal = :salmensal,'
      '  qtdehorasmensais = :qtdehorasmensais,'
      '  salhora = :salhora,'
      '  comsemregistro = :comsemregistro,'
      '  contabanco = :contabanco,'
      '  contaagencia = :contaagencia,'
      '  contanumero = :contanumero,'
      '  telresidencia = :telresidencia,'
      '  telradio = :telradio,'
      '  valetransporte = :valetransporte,'
      '  valerefeicao = :valerefeicao,'
      '  manhaentrada = :manhaentrada,'
      '  manhasaida = :manhasaida,'
      '  tardeentrada = :tardeentrada,'
      '  tardesaida = :tardesaida,'
      '  qtdemunicipal = :qtdemunicipal,'
      '  qtdemetro = :qtdemetro,'
      '  qtdetrem = :qtdetrem,'
      '  qtdeintermunicipal = :qtdeintermunicipal,'
      '  diasegunda = :diasegunda,'
      '  diaterca = :diaterca,'
      '  diaquarta = :diaquarta,'
      '  diaquinta = :diaquinta,'
      '  diasexta = :diasexta,'
      '  diasabado = :diasabado,'
      '  diadomingo = :diadomingo,'
      '  situacao = :situacao,'
      '  dtadmissao = :dtadmissao,'
      '  dtdemissao = :dtdemissao,'
      '  diarista_hs_meio_periodo = :diarista_hs_meio_periodo,'
      '  diarista_hs_meio_periodo_vlr = '
      ':diarista_hs_meio_periodo_vlr,'
      '  diarista_integral = :diarista_integral,'
      '  diarista_integral_vlr = :diarista_integral_vlr,'
      '  diarista_vlr_hora_adicional = :diarista_vlr_hora_adicional,'
      '  crq = :crq,'
      '  username = :username,'
      '  assinatura = :assinatura'
      'WHERE'
      '  idcodigo = :OLD_idcodigo')
    UseSequenceFieldForRefreshSQL = False
    Left = 104
    Top = 104
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nome'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cargo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telramal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telcelular'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'rg'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cpf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ctps'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'endereco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bairro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cep'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'estado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cbo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mensalistahorista'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'salmensal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdehorasmensais'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'salhora'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'comsemregistro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contabanco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contaagencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'contanumero'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telresidencia'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'telradio'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valetransporte'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'valerefeicao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'manhaentrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'manhasaida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tardeentrada'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tardesaida'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdemunicipal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdemetro'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdetrem'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'qtdeintermunicipal'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diasegunda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diaterca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diaquarta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diaquinta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diasexta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diasabado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diadomingo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'situacao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtadmissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dtdemissao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diarista_hs_meio_periodo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diarista_hs_meio_periodo_vlr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diarista_integral'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diarista_integral_vlr'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'diarista_vlr_hora_adicional'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'crq'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'username'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'assinatura'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OLD_idcodigo'
        ParamType = ptUnknown
      end>
  end
end
