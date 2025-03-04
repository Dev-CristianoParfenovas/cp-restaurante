unit untBuscaCep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, BmsXPTopBar, Buttons, IBQuery, IniFiles;

type
  TfrmBuscaCep = class(TForm)
    lbl_edtCep: TLabeledEdit;
    lbl_edtEndereco: TLabeledEdit;
    lbl_edtBairro: TLabeledEdit;
    lbl_edtCidade: TLabeledEdit;
    lbl_edtEstado: TLabeledEdit;
    BmsXPTopBar1: TBmsXPTopBar;
    sbSair: TSpeedButton;
    lbl_F1: TLabel;
    procedure sbSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure Limpacampos;
    procedure FormShow(Sender: TObject);
    procedure lbl_edtCepExit(Sender: TObject);
    procedure lbl_edtCepKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmBuscaCep: TfrmBuscaCep;
  ConfigSiS  : TIniFile;
  
implementation

uses untdmModule, DB;

{$R *.dfm}

procedure TfrmBuscaCep.sbSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmBuscaCep.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmBuscaCep.Limpacampos;

begin

  with dmModule do begin

    lbl_edtCep.Clear;
    lbl_edtEndereco.Clear;
    lbl_edtBairro.Clear;
    lbl_edtCidade.Clear;
    lbl_edtEstado.Clear;

    lbl_edtCep.SetFocus;
    
  end;//with

end;

procedure TfrmBuscaCep.FormShow(Sender: TObject);

var

CaminhoSkin : String;

begin

  Limpacampos;
  
  with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini

      with dmModule do begin

        frmBuscaCep.Caption := ReadString('ConfigSiS','Titulo','');
        dmModule.IBDCep.DatabaseName := ReadString('ConfigSiS','BcoCep','') + '\TBLCEP.fdb'; //Faz a leitura de uma String na se��o do arquivo ini
        dmModule.IBDCep.Connected := True; //Manda Conectar o Banco de Dados

      end;

    end;  

end;

procedure TfrmBuscaCep.lbl_edtCepExit(Sender: TObject);
begin

  with dmModule do begin

    if lbl_edtCep.Text <> '' Then begin

      ibCep.Close;
      ibCep.SQL.Clear;
      ibCep.SQL.Add('SELECT * FROM FRANCA WHERE CEP=''' + lbl_edtCep.Text + '''');
      ibCep.Open;

      if ibCep.RecordCount > 0 Then begin

        lbl_edtEndereco.Text := ibCep.FieldByName('LOGRADOURO').AsString;
        lbl_edtBairro.Text   := ibCep.FieldByName('BAIRRO').AsString;
        lbl_edtCidade.Text   := ibCep.FieldByName('CIDADE').AsString;
        lbl_edtEstado.Text   := ibCep.FieldByName('UF').AsString;

      end;//if

    end;  

  end;//with

end;

procedure TfrmBuscaCep.lbl_edtCepKeyPress(Sender: TObject; var Key: Char);
begin

  with dmModule do begin

    if key=#13 Then begin

      if lbl_edtCep.Text <> '' Then begin

        lbl_edtEndereco.SetFocus;

      end;

    end;//if

  end;//with

end;

procedure TfrmBuscaCep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with dmModule do begin

    case key of

      VK_F1 :begin

        Limpacampos;

      end;//begin

    end;//case

  end;//with

end;

end.
