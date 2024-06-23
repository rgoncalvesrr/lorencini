unit uResources;

interface

uses
  SysUtils, Classes, ImgList, Controls, System.ImageList;

type
  TResources = class(TDataModule)
    medium_n: TImageList;
    medium_d: TImageList;
    medium_h: TImageList;
    small_n: TImageList;
    small_d: TImageList;
    small_h: TImageList;
    large_n: TImageList;
    large_d: TImageList;
    large_h: TImageList;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Resources: TResources;

implementation

{$R *.dfm}

end.
