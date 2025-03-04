unit untCores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, IBEAntialiasButton, IBQuery;

type
  TfrmCores = class(TForm)
    ibeaIncluiVacina: TIBEAntialiasButton;
    ibeaAlterar: TIBEAntialiasButton;
    ibeaExcluir: TIBEAntialiasButton;
    ibeaSair: TIBEAntialiasButton;
    lbl_edtNome: TLabeledEdit;
    dbgCores: TDBGrid;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECT;
    procedure GravaCor;
    procedure AlteraCor;
    procedure DeletaCor;
    procedure ExibeDados;
    procedure FormShow(Sender: TObject);
    procedure dbgCoresCellClick(Column: TColumn);
    procedure ibeaAlterarClick(Sender: TObject);
    procedure ibeaIncluiVacinaClick(Sender: TObject);
    procedure ibeaExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ibeaSairClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCores: TfrmCores;
  IDCor : Integer;
  MontaColunas : Boolean;

implementation

uses untdmModule;

{$R *.dfm}

procedure TfrmCores.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmCores.ExecSELECT;

begin

  with dmModule do begin

    Commit(ibCores);
    ibCores.Close;
    ibCores.SQL.Clear;
    ibCores.SQL.Add('SELECT * FROM TBLCORES ORDER BY COR');
    ibCores.Open;

  end;//with

end;

procedure TfrmCores.GravaCor;

var

ConfirmaGravacao : Integer;

begin


  with dmModule do begin

  ConfirmaGravacao := Application.MessageBox('Confirma o Lan�amento','Grava Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaGravacao = 6 Then begin

      ibCores.Close;
      ibCores.SQL.Clear;
      ibCores.SQL.Add('INSERT INTO TBLCORES'
      + '(COR) values '
      + ' (''' + lbl_edtNome.Text + ''')');
      ibCores.ExecSQL;
      Commit(ibCores);

      ExecSELECT;
      lbl_edtNome.Clear;

    end;//if

  end;//with

end;

procedure TfrmCores.AlteraCor;

var

ConfirmaAlteracao : Integer;

begin


  with dmModule do begin

  ConfirmaAlteracao := Application.MessageBox('Confirma a altera��o','Altera��o de Registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaAlteracao = 6 Then begin

      ibCores.Close;
      ibCores.SQL.Clear;
      ibCores.SQL.Add('UPDATE TBLCORES SET '
      + 'COR = ''' + lbl_edtNome.Text + ''' WHERE IDCOR=''' + IntToStr(IDCor) + '''');
      ibCores.ExecSQL;
      Commit(ibCores);
      ExecSELECT;
      lbl_edtNome.Clear;

    end;//if

  end;//with

end;

procedure TfrmCores.DeletaCor;

var

ConfirmaExclusao : Integer;

begin

  with dmModule do begin

  ConfirmaExclusao := Application.MessageBox('Confirma Exclus�o do registro?','Exclus�o de registro',+MB_YESNO+MB_DEFBUTTON1+MB_ICONQUESTION);

    if ConfirmaExclusao = 6 Then begin

      ibCores.Close;
      ibCores.SQL.Clear;
      ibCores.SQL.Add('DELETE FROM TBLCORES WHERE IDCOR=''' + IntToStr(IDCor) + '''');
      ibCores.ExecSQL;

    end;//if

    ExecSELECT;

    lbl_edtNome.Clear;

  end;//with

end;

procedure TfrmCores.ExibeDados;

begin

  with dmModule do begin

  IDCor := ibCores.FieldByName('IDCOR').AsInteger;

    if ibCores.RecordCount > 0 Then begin

      lbl_edtNome.Text := ibCores.FieldByName('COR').AsString;

    end;//if record count

  end;//with

end;

procedure TfrmCores.FormShow(Sender: TObject);
begin

  lbl_edtNome.Clear;
  
  with dmModule do begin

    ExecSELECT;

    with dbgCores do begin

      if MontaColunas Then begin

      DataSource := dmModule.dtsCores;

        //determina as colunas a serem montadas
        Columns.Insert(0);
        Columns.Insert(1);
       // Columns.Insert(2);
      //  Columns.Insert(3);
      //  Columns.Insert(4);

        //Parametros da Coluna que exibe o C�digo da entrada no estoque
        Columns.Items[0].Title.Caption := 'C�digo';
        Columns.Items[0].FieldName     := 'IDCOR';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;

        //Parametros da Coluna que exibe o vlr unitario do produto.
        Columns.Items[1].Title.Caption := 'Cor';
        Columns.Items[1].FieldName     := 'COR';
        Columns.Items[1].Width         := 120;
        Columns.Items[1].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;//if monta colunas;

    end;//with

  end;//with

end;

procedure TfrmCores.dbgCoresCellClick(Column: TColumn);
begin

  with dmModule do begin

    ExibeDados;

  end;//with

end;

procedure TfrmCores.ibeaAlterarClick(Sender: TObject);
begin

  with dmModule do begin

    AlteraCor;

  end;//with

end;

procedure TfrmCores.ibeaIncluiVacinaClick(Sender: TObject);
begin

  with dmModule do begin

    GravaCor;

  end;//with

end;

procedure TfrmCores.ibeaExcluirClick(Sender: TObject);
begin

with dmModule do begin


end;//with

end;

procedure TfrmCores.FormCreate(Sender: TObject);
begin
MontaColunas := True;
end;

procedure TfrmCores.ibeaSairClick(Sender: TObject);
begin
Close;
end;

end.
