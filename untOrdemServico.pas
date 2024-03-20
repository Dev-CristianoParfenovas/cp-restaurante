unit untOrdemServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBQuery, StdCtrls, ComCtrls, Grids,
  DBGrids, classComboBox, ExtCtrls, Data.DB;

type
  TfrmOrdemServico = class(TForm)
    lbl_Cli: TLabel;
    lbl_Por: TLabel;
    lbl_Prod: TLabel;
    lbl_Qtde: TLabel;
    lbl_Vlr: TLabel;
    lbl_Total: TLabel;
    lbl_Obs: TLabel;
    lbl_QtdeItem: TLabel;
    lbl_Data: TLabel;
    dbgContasaReceber: TDBGrid;
    lbl_TotalServicos: TLabel;
    lbl_SubTotal: TLabel;
    dtpDataPedido: TDateTimePicker;
    cboCliente: TComboBox;
    cboProduto: TComboBox;
    memoObs: TMemo;
    lbl_edtNumeroPed: TLabeledEdit;
    lbl_edtNumeroPedido: TLabeledEdit;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTClientes;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrdemServico: TfrmOrdemServico;

implementation

uses untdmModule;

{$R *.dfm}

procedure TfrmOrdemServico.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmOrdemServico.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmOrdemServico.ExecSELECTClientes;

var
IDClassCli : Integer;
ClassCli     : TClasseCombo;
begin
  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClassCli := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClassCli) + ''' ORDER BY NOME');//('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + InttoStr(IDClass) + ''' ORDER BY NOME');
    ibCadastro.Open;

    cboCliente.Clear; //LIMPA O COMBOBOX

    while not ibCadastro.Eof do begin

      ClassCli     := TClasseCombo.Create;
      ClassCli.ID  := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,ClassCli);
      ibCadastro.Next;

    end;{WHILE}

  end;{WITH}

end;

procedure TfrmOrdemServico.FormShow(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECTClientes;

  end;//with

end;

end.
