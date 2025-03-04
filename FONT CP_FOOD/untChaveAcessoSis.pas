unit untChaveAcessoSis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IBQuery, ComCtrls, Menus;

type
  TfrmChaveAcesso = class(TForm)
    lbl_edtChaveAcesso: TLabeledEdit;
    lbl_edtSerie: TLabeledEdit;
    dtpDataEmissao: TDateTimePicker;
    lbl_edtSair: TLabeledEdit;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure lbl_edtChaveAcessoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure lbl_edtSairKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtSerieExit(Sender: TObject);
    procedure lbl_edtSerieKeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmChaveAcesso: TfrmChaveAcesso;

implementation

uses untdmModule, untPrincipal, DB;

{$R *.dfm}

procedure TfrmChaveAcesso.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmChaveAcesso.lbl_edtChaveAcessoKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    if (lbl_edtChaveAcesso.Text <> '')and(lbl_edtSerie.Text <> '')Then begin

      frmChaveAcesso.Close;

    end else if (lbl_edtChaveAcesso.Text <> '')and(lbl_edtSerie.Text = '')Then begin

    lbl_edtSerie.SetFocus;

    end;
    
  end;//if

end;

procedure TfrmChaveAcesso.FormShow(Sender: TObject);
begin
dtpDataEmissao.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));
end;

procedure TfrmChaveAcesso.lbl_edtSerieExit(Sender: TObject);

var

Acesso : String;
Controle : Integer;
Dia,Mes,Ano : Word;
DataDia,DataProrrogada : TDate;

begin

  with dmModule do begin

    ibAcessoSis.Close;
    ibAcessoSis.SQL.Clear;
    ibAcessoSis.SQL.Add('SELECT * FROM TBLACESSOSIS');
    ibAcessoSis.Open;

    Controle := ibAcessoSis.FieldByName('CONTROLE').AsInteger + 1;

    if Mes=12 Then //se mes for igual a 12
      begin
        Mes:=+1;//no mes atribui 1
        Ano:=Ano+1;//no ano atribui 1
      end
    else

    DecodeDate(dtpDataEmissao.Date,Dia,Mes,Ano);
    Mes := Mes + 1;
    DataDia := EncodeDate(Dia,Mes,Ano);
    DataProrrogada := DataDia;

    if (lbl_edtChaveAcesso.Text <> '')and(lbl_edtSerie.Text <> '')Then begin

      ibAcessoSis.Close;
      ibAcessoSis.SQL.Clear;
      ibAcessoSis.SQL.Add('UPDATE TBLACESSOSIS SET '
      + 'CHAVE=''' + lbl_edtChaveAcesso.Text + ''','
      + 'SERIE=''' + lbl_edtSerie.Text + ''' WHERE IDACESSO= ''1'' ');
      ibAcessoSis.ExecSQL;
      Commit(ibAcessoSis);

      if (lbl_edtChaveAcesso.Text = 'CN717711-BE070711-P5511187-CP258881')and(lbl_edtSerie.Text='CP-3811')Then begin

        Acesso := '1';

        ibAcessoSis.Close;
        ibAcessoSis.SQL.Clear;
        ibAcessoSis.SQL.Add('UPDATE TBLACESSOSIS SET '
        + 'CONTROLE=''' + IntToStr(Controle) + ''','
        + 'ACESSO=''' + Acesso + ''' WHERE IDACESSO= ''1'' ');
        ibAcessoSis.ExecSQL;
        Commit(ibAcessoSis);

        ibDataSistema.Close;
        ibDataSistema.SQL.Clear;
        ibDataSistema.SQL.Add('UPDATE TBLDATASISTEMA SET '
        + 'DATA=''' + FormatDateTime('mm-dd-yyyy',DataProrrogada) + ''' WHERE IDDATASIS= ''1'' ');
        ibDataSistema.ExecSQL;  
        Commit(ibDataSistema);

      end;//if

    end;
    
  end;

end;

procedure TfrmChaveAcesso.lbl_edtSairKeyPress(Sender: TObject;
  var Key: Char);
begin
    //  SkinData1.Active := False;
      frmPrincipal.Close;

end;

procedure TfrmChaveAcesso.lbl_edtSerieKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtChaveAcesso.SetFocus;
    
  end;

end;

end.
