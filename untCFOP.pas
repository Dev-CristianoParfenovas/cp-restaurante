unit untCFOP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, StdCtrls, ExtCtrls, Grids, DBGrids, IBQuery, Data.DB;

type
  TfrmCFOP = class(TForm)
    btGravar: TSpeedButton;
    btAlterar: TSpeedButton;
    btExcluir: TSpeedButton;
    lbl_edtCodCFOP: TLabeledEdit;
    lbl_edtDescrCFOP: TLabeledEdit;
    dbgCFOP: TDBGrid;
    btSair: TSpeedButton;
    procedure lbl_edtCodCFOPEnter(Sender: TObject);
    procedure lbl_edtDescrCFOPEnter(Sender: TObject);
    procedure lbl_edtCodCFOPExit(Sender: TObject);
    procedure lbl_edtDescrCFOPExit(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure SelectCFOP;
    procedure ExibeDados;
    procedure lbl_edtCodCFOPKeyPress(Sender: TObject; var Key: Char);
    procedure LimparCampos;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GravarCFOP;
    procedure dbgCFOPCellClick(Column: TColumn);
    procedure btSairClick(Sender: TObject);
    procedure btAlterarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btGravarClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    end;
    
var

  frmCFOP: TfrmCFOP;
  MontaColunas: Boolean;
  intIDCFOP : Integer;

implementation

uses untdmModule;

{$R *.dfm}

procedure TfrmCFOP.lbl_edtCodCFOPEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCFOP.lbl_edtDescrCFOPEnter(Sender: TObject);
begin
tedit(sender).color := $00A0FAF8;
end;

procedure TfrmCFOP.lbl_edtCodCFOPExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCFOP.lbl_edtDescrCFOPExit(Sender: TObject);
begin
tedit(sender).color := clwindow;
end;

procedure TfrmCFOP.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmCFOP.ExibeDados;

begin

  with dmModule do begin

  intIDCFOP := ibCFOP.FieldByName('IDCFOP').AsInteger;

    if ibCFOP.RecordCount > 0 Then begin

      lbl_edtCodCFOP.Text := ibCFOP.FieldByName('CODIGO_CFOP').AsString;
      lbl_edtDescrCFOP.Text := ibCFOP.FieldByName('DESCRICAOCFOP').AsString;

    end;//if record count

  end;//with

end;

procedure TfrmCFOP.SelectCFOP;

begin

  with dmModule do begin

    ibCFOP.Close;
    ibCFOP.SQL.Clear;
    ibCFOP.SQL.Add('SELECT * FROM TBL_CFOP ORDER BY CODIGO_CFOP');
    ibCFOP.Open;

  end;//with

end;

procedure TfrmCFOP.lbl_edtCodCFOPKeyPress(Sender: TObject; var Key: Char);
begin

  if key=#13 Then begin

    lbl_edtDescrCFOP.SetFocus;

  end;

end;

procedure TfrmCFOP.LimparCampos;

begin

  lbl_edtCodCFOP.Clear;
  lbl_edtDescrCFOP.Clear;

end;

procedure TfrmCFOP.FormShow(Sender: TObject);
begin

  with dmModule do begin

    SelectCFOP;
    LimparCampos;
    
    with dbgCFOP do begin

      if MontaColunas Then begin

        DataSource := dmModule.dtsCFOP;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'C�digo CFOP';
        Columns.Items[0].FieldName     := 'CODIGO_CFOP';
        Columns.Items[0].Width         := 80;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[1].Title.Caption := 'Descri��o CFOP';
        Columns.Items[1].FieldName     := 'DESCRICAOCFOP';
        Columns.Items[1].Width         := 380;
        Columns.Items[1].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;//if monta colunas;

    end;//with

  end;//with

end;

procedure TfrmCFOP.FormCreate(Sender: TObject);
begin
MontaColunas := True;
end;

procedure TfrmCFOP.GravarCFOP;

begin

  with dmModule do begin

      ibCFOP.Close;
      ibCFOP.SQL.Clear;
      ibCFOP.SQL.Add('INSERT INTO TBL_CFOP'
      + '(CODIGO_CFOP,DESCRICAOCFOP) values '
      + '(''' + lbl_edtCodCFOP.Text + ''','
      + ' ''' + lbl_edtDescrCFOP.Text + ''')');
      ibCFOP.ExecSQL;
      Commit(ibCFOP);

      SelectCFOP;

      LimparCampos;

  end;//with

end;

procedure TfrmCFOP.dbgCFOPCellClick(Column: TColumn);
begin

  with dmModule do begin

    ExibeDados;
    
  end;//with

end;

procedure TfrmCFOP.btSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmCFOP.btAlterarClick(Sender: TObject);

var

ConfirmaAlteracao : Integer;

begin


  with dmModule do begin

  ConfirmaAlteracao := Application.MessageBox('Confirma a altera��o','Altera��o de Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaAlteracao = 6 Then begin

      ibCFOP.Close;
      ibCFOP.SQL.Clear;
      ibCFOP.SQL.Add('UPDATE TBL_CFOP SET '
      + 'CODIGO_CFOP = ''' + lbl_edtCodCFOP.Text + ''','
      + 'DESCRICAOCFOP = ''' + lbl_edtDescrCFOP.Text + ''' WHERE IDCFOP=''' + IntToStr(intIDCFOP) + '''');
      ibCFOP.ExecSQL;
      Commit(ibCFOP);
      SelectCFOP;
      LimparCampos;

    end;//if

  end;//with

end;

procedure TfrmCFOP.btExcluirClick(Sender: TObject);

var
ConfirmaExclusao : Integer;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Confirma Exclus�o do registro?','Exclus�o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibCFOP.Close;
      ibCFOP.SQL.Clear;
      ibCFOP.SQL.Add('DELETE FROM TBL_CFOP WHERE IDCFOP=''' + IntToStr(intIDCFOP) + '''');
      ibCFOP.ExecSQL;

    end;//if

    SelectCFOP;
    LimparCampos;


  end;//with

end;

procedure TfrmCFOP.btGravarClick(Sender: TObject);
begin

  with dmModule do begin

    GravarCFOP;

  end;//with

end;

end.
