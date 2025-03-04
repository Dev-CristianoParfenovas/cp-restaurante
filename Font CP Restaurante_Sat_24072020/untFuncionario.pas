unit untFuncionario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, IBQuery, classComboBox;

type
  TfrmFuncionario = class(TForm)
    cboFunc: TComboBox;
    btSair: TSpeedButton;
    lbl_Informacao: TLabel;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure SELECTFunc;
    procedure btSairClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cboFuncClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionario: TfrmFuncionario;

implementation

uses DB, untdmModule, untModuloRestaurante;

{$R *.dfm}

procedure TfrmFuncionario.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmFuncionario.SELECTFunc;

var
ClassFunc     : TClasseCombo;

begin

  with dmModule do begin

    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE(TIPOUSUARIO=''Funcionario'')or(TIPOUSUARIO=''Vendedor'')ORDER BY LOGIN');
    ibUser.Open;

    cboFunc.Clear;

    while not ibUser.Eof do begin

      ClassFunc     := TClasseCombo.Create;
      ClassFunc.ID  := ibUser.FieldByName('IDUSER').AsInteger;//ATRIBUI A IDENTIFICACAO DO FUNCIONARIO ATRAVES DO ID NA VARIAVEL.
      cboFunc.Items.AddObject(ibUser.FieldByName('LOGIN').AsString,ClassFunc);//TRAZ OS ITENS ADICIONADOS AO OBJETO SELECIONADO NO COMBO E A DESCRICAO DO FUNCIONARIO.
      ibUser.Next;

    end;

  end;{with}

end;

procedure TfrmFuncionario.btSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmFuncionario.FormShow(Sender: TObject);
begin

  with dmModule do begin

    SELECTFunc;

  end;//with
  
end;

procedure TfrmFuncionario.cboFuncClick(Sender: TObject);

var
IDEntregador : TClasseCombo;
strEntregador : String;

begin

  with dmModule do begin

    if cboFunc.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO

      IDEntregador  := TClasseCombo( cboFunc.Items.Objects[cboFunc.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      strEntregador := ' ''' + InttoStr(IDEntregador.ID ) + ''',';

    end;

    Commit(ibUser);
    ibUser.Close;
    ibUser.SQL.Clear;
    ibUser.SQL.Add('SELECT * FROM TBLUSER WHERE IDUSER=''' + IntToStr(IDEntregador.ID) + '''');
    ibUser.Open;

    if ibUser.RecordCount > 0 Then begin

    frmRestaurante.lbl_IDFunc.Caption := IntToStr(ibUser.FieldByName('IDUSER').AsInteger);
    frmRestaurante.lbl_Funcionario.Caption := ibUser.FieldByName('NOME').AsString;
    frmRestaurante.lbl_DetalheFunc.Caption := 'Entregador :';

    end;//if

  end;//with

  btSairClick(Sender);

end;

end.
