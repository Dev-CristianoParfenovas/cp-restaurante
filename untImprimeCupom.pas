unit untImprimeCupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, IBQuery;

type
  TfrmImprimeCupom = class(TForm)
    lbl_F1: TLabel;
    btnSair: TBitBtn;
    lbl_edtNCupom: TLabeledEdit;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmImprimeCupom: TfrmImprimeCupom;
  PathSistema : String;
implementation

{$R *.dfm}

procedure TfrmImprimeCupom.Commit(IBQueryExec : TIBQuery);

begin

  with dmModule do begin

    with IBQueryExec do begin
      SQL.Clear;
      SQL.Add('Commit');
      Open;
      Close;
    end;

  end;

end;
procedure TfrmImprimeCupom.FormCreate(Sender: TObject);
begin

  PathSistema := ExtractFilePath(ParamStr(0));
  
  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp') Then
    btnSair.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp');

end;

end.
