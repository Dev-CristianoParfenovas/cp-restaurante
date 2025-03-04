unit untRecebePedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ComCtrls, mxFlatControls, StdCtrls, IBQuery,
  classComboBox;

type
  TfrmRecebePedido = class(TForm)
    cboTipoPagto: TComboBox;
    Label1: TLabel;
    cboTPagto: TComboBox;
    Label3: TLabel;
    lbl_edtValor: TLabeledEdit;
    lbl_edtValorPago: TLabeledEdit;
    lbl_edtDesconto: TLabeledEdit;
    lbl_edtAcrescimo: TLabeledEdit;
    lbl_edtTotalVenda: TLabeledEdit;
    lbl_edtTroco: TLabeledEdit;
    lbl_edtSair: TLabeledEdit;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTTipoPagto;
    procedure ExecSELECTTPagto;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRecebePedido: TfrmRecebePedido;
  IDTipoPagto,IDTPagto    : TClasseCombo;

implementation

uses untdmModule;

{$R *.dfm}

procedure TfrmRecebePedido.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmRecebePedido.ExecSELECTTipoPagto;

begin

  with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTipoPagto.Clear;

    while not ibTipoPagtoF.Eof do begin

      IDTipoPagto    := TClasseCombo.Create;
      IDTipoPagto.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;
      cboTipoPagto.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTipoPagto);
      ibTipoPagtoF.Next;

    end;{while}

  end;{with}

end;

procedure TfrmRecebePedido.ExecSELECTTPagto;

begin

  with dmModule do begin

    ibTipoPagtoF.Close;
    ibTipoPagtoF.SQL.Clear;
    ibTipoPagtoF.SQL.Add('SELECT * FROM TBLTIPOPAGTOAVULSO');
    ibTipoPagtoF.Open;

    cboTPagto.Clear;

    while not ibTipoPagtoF.Eof do begin

      IDTPagto    := TClasseCombo.Create;
      IDTPagto.ID := ibTipoPagtoF.FieldByName('IDTIPO').AsInteger;
      cboTPagto.Items.AddObject(ibTipoPagtoF.FieldByName('DESCRICAO').AsString,IDTPagto);
      ibTipoPagtoF.Next;

    end;{while}

  end;//with

end;


procedure TfrmRecebePedido.FormShow(Sender: TObject);
begin

  with dmModule do begin

    ExecSELECTTPagto;
    ExecSELECTTipoPagto;

  end;//with

end;

end.
