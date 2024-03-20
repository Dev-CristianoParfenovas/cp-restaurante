unit untSangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, RxGIF, IBQuery;

type
  TfrmSangria = class(TForm)
    imgFundodeTela: TImage;
    lbl_Ref: TLabel;
    lbl_Sair: TLabel;
    lbl_EstornoSangria: TLabel;
    lbl_F2: TLabel;
    lbl_F7: TLabel;
    lbl_edtSenhaSangria: TLabeledEdit;
    lbl_edtVlrSangria: TLabeledEdit;
    memoObs: TMemo;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure lbl_edtSenhaSangriaExit(Sender: TObject);
    procedure lbl_edtSenhaSangriaKeyPress(Sender: TObject; var Key: Char);
    procedure lbl_edtSenhaSangriaChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lbl_edtVlrSangriaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSangria: TfrmSangria;

implementation

uses untdmModule;

{$R *.dfm}

procedure TfrmSangria.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmSangria.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

var

ConfirmaSangria, IDSangria : Integer;
TipoSaida,ValorSangria : String;

begin

  with dmModule do begin

    case key of

      VK_F1 :begin

        frmSangria.Close;

      end;//begin

      VK_F5 :begin

        lbl_EstornoSangria.Caption := 'Estorno de Sangria';

      end;//begin

      VK_F7 :begin

        if lbl_edtVlrSangria.Text > '0,00' Then begin

        ConfirmaSangria := Application.MessageBox('Confirma a Sangria?','Retirada do Caixa',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

          if ConfirmaSangria = 6 Then begin

            if lbl_EstornoSangria.Caption = '' Then begin

              TipoSaida := 'Sangria';

            end;

            ValorSangria := StringReplace(lbl_edtVlrSangria.Text,ThousandSeparator,'',[rfReplaceAll]);
            ValorSangria := StringReplace(ValorSangria,DecimalSeparator,'.',[rfReplaceAll]);
            if ValorSangria  = '' Then
               ValorSangria := '0';


             ibServsVendasCli.Close;
             ibServsVendasCli.SQL.Clear;
             ibServsVendasCli.SQL.Add('INSERT INTO TBLSERVICOSVENDASCLI '
             + '(VLRSANGRIA,TIPOSAIDA,DATA,HORA) values '
             + '(''' + ValorSangria + ''','
             + ' ''' + TipoSaida + ''','
             + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
             + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''')');
             ibServsVendasCli.ExecSQL;

             Commit(ibServsVendasCli);

            ibServsVendasCli.Close;
            ibServsVendasCli.SQL.Clear;
            ibServsVendasCli.SQL.Add('SELECT * FROM TBLSERVICOSVENDASCLI ORDER BY IDSERVSVENDA DESC');// WHERE IDSERVSVENDA=''' + IntToStr(IDSangria) + '''');
            ibServsVendasCli.Open;

            while not ibServsVendasCli.Eof do begin

            IDSangria := ibServsVendasCli.FieldByName('IDSERVSVENDA').AsInteger;

            ibServsVendasCli.Last;

            end;


            ibServsVenda.Close;
            ibServsVenda.SQL.Clear;
            ibServsVenda.SQL.Add('INSERT INTO TBLSERVICOSVENDAS '
            + '(VLRSANGRIA,TIPOSAIDA,IDSERVSVENDA,OBS,DATA,HORA) values '
            + '(''' + ValorSangria + ''','
            + ' ''' + TipoSaida + ''','
            + ' ''' + IntToStr(IDSangria) + ''','
            + ' ''' + memoObs.Text + ''','
            + ' ''' + FormatDateTime('mm-dd-yyyy',Now) + ''','
            + ' ''' + FormatDateTime('hh:mm:ss',Now) + ''')');
            ibServsVenda.ExecSQL;

            Commit(ibServsVenda);

            lbl_edtSenhaSangria.Text := '';
            lbl_edtVlrSangria.Text := '0,00';
            memoObs.Text := '';


          end;//if confirma sangria

        end else begin

          Application.MessageBox('O campo valor está em branco?','Campo em branco',+MB_OK+MB_DEFBUTTON1+MB_ICONWARNING);

        end;//iflabel


      end;//begin

    end;//case

  end;//with

end;

procedure TfrmSangria.lbl_edtSenhaSangriaExit(Sender: TObject);

var

TipoUsuario : String;
Senha,Numero : String;

begin

  with dmModule do begin

    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE SENHA=''' + lbl_edtSenhaSangria.Text + '''');
    ibUser.Open;

  //  IDAcesso := (IDClassUsuario.ID);

    Senha       := ibUser.FieldByName('SENHA').AsString;
    TipoUsuario := ibUser.FieldByName('TIPOUSUARIO').AsString;
    Numero      := lbl_edtSenhaSangria.Text;

    if (Senha = Numero)and (TipoUsuario = 'Administrador') Then begin

    lbl_edtVlrSangria.SetFocus;

    end else begin

    Application.MessageBox('É necessário a senha de seu administrador para este procedimento.','Senha não autorizada',+MB_OK+MB_DEFBUTTON1+MB_ICONHAND);

    frmSangria.Close;

    end;

  end;//with

end;

procedure TfrmSangria.lbl_edtSenhaSangriaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 Then begin

    lbl_edtVlrSangria.SetFocus;

  end;//if

end;

procedure TfrmSangria.lbl_edtSenhaSangriaChange(Sender: TObject);
begin
lbl_edtSenhaSangria.PasswordChar := '#';
end;

procedure TfrmSangria.FormShow(Sender: TObject);
begin

  lbl_edtSenhaSangria.Clear;
  lbl_edtSenhaSangria.SetFocus;
  lbl_edtSenhaSangria.Text := '';
  lbl_edtVlrSangria.Text := '0,00';
  memoObs.Text := '';

end;

procedure TfrmSangria.lbl_edtVlrSangriaKeyPress(Sender: TObject;
  var Key: Char);
begin

  if key=#13 Then begin

    memoObs.SetFocus;

  end;//if

end;

end.
