unit uQrDef;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQrDef = class(TQuickRep)
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRSysData3: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    DetailBand1: TQRBand;
  private

  public

  end;

var
  QrDef: TQrDef;

implementation

{$R *.DFM}

end.
