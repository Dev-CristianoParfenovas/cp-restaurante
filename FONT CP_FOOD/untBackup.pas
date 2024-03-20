unit untBackup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, mxFlatControls, BmsXPButton, ExtCtrls, BmsXPTopBar,
  ShellApi, ComCtrls;

type
  TfrmBackup = class(TForm)
    lbl_edtOrigem: TmxFlatEdit;
    lbl_edtDestino: TmxFlatEdit;
    lbl_Origem: TLabel;
    lbl_Destino: TLabel;
    ibeaSair: TBmsXPButton;
    ibeaExecutar: TBmsXPButton;
    topbTitulo: TBmsXPTopBar;
    dtpDataBkp: TmxFlatDateTimePicker;
    lbl_DataBKP: TLabel;
    procedure ibeaSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ibeaExecutarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBackup: TfrmBackup;
  Origem,Destino : String;
implementation

{$R *.dfm}

procedure TfrmBackup.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBackup.FormCreate(Sender: TObject);

begin

  Origem  := ExtractFilePath(ParamStr(0));
  //Destino := ExtractFilePath(ParamStr(0));

  if FileExists(Origem) Then

end;

procedure TfrmBackup.FormShow(Sender: TObject);

begin

dtpDataBkp.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

lbl_edtOrigem.Text := (Origem+'Dados\LOJA.fdb');
lbl_edtDestino.Text := ('C:\BKP_CPSistemas');

end;

procedure TfrmBackup.ibeaExecutarClick(Sender: TObject);

var
Dados: TSHFileOpStruct;
origem, destino: String;
//DataBKP : String;
//Data :TDate;
begin


    //  Data := StrToDate(FormatDateTime('mm/dd/yyyy',dtpDataBkp.Date));
    //  DataBKP := DateToStr(Data);

      origem:=lbl_edtOrigem.Text;
      destino:=lbl_edtDestino.Text;

      If (lbl_edtOrigem.Text<>'') and (lbl_edtDestino.Text<>'') then
      begin
        FillChar(Dados,SizeOf(Dados), 0);
        with Dados do
        begin
          wFunc := FO_COPY;
          pFrom := PChar(origem);
          pTo := PChar(destino);
          fFlags:= FOF_ALLOWUNDO;
        end;
        SHFileOperation(Dados);
        ShowMessage('Processo finalizado. Verifique se sua cópia foi realizada corretamente.');
      end
      else
      begin
        ShowMessage('Preencha corretamente os caminhos de origem e destino.');
        lbl_edtOrigem.SetFocus;
      end;

end;

end.
