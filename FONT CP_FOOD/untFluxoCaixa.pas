unit untFluxoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls, ComCtrls, IBQuery;

type
  TfrmFluxoCaixa = class(TForm)
    dbgFluxoCaixa: TDBGrid;
    lbl_edtTotalFluxo: TLabeledEdit;
    dtpData: TDateTimePicker;
    lbl_F2: TLabel;
    lbl_Data: TLabel;
    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECT;
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFluxoCaixa: TfrmFluxoCaixa;
  MontaColunas : Boolean;

implementation

uses untdmModule, funcPosto, DB;

{$R *.dfm}

procedure TfrmFluxoCaixa.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmFluxoCaixa.ExecSELECT;

var

TotalFluxoCaixa : Real;
TotalFluxo : String;

begin

  if TotalFluxoCaixa > 0 then begin

    TotalFluxoCaixa := 0;

  end;

  if TotalFluxo > '0' Then begin

    TotalFluxo := '0';

  end;

  with dmModule do begin

    Commit(ibTempVendaLoja);
    ibTempVendaLoja.Close;
    ibTempVendaLoja.SQL.Clear;
    ibTempVendaLoja.SQL.Add('SELECT * FROM TBLSERVICOSVENDAS WHERE(TBLSERVICOSVENDAS.DATA= ''' + FormatDateTime('mm-dd-yyyy',dtpData.Date) + ''')and(TBLSERVICOSVENDAS.POSVENDA=''Pago'')ORDER BY IDSERVSVENDA ASC');
    ibTempVendaLoja.Open;

    (ibTempVendaLoja.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibTempVendaLoja.FieldByName('QTDE') as TFloatField).DisplayFormat := CasasDecimais('Produtos');
    (ibTempVendaLoja.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := CasasDecimais('Produtos');

      while not ibTempVendaLoja.Eof do begin

        if TotalFluxoCaixa = 0 Then begin

          TotalFluxoCaixa := StrToFloat(StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfreplaceAll]));

        end else begin

          TotalFluxo := StringReplace(FloatToStr(ibTempVendaLoja.FieldByName('VLRTOTAL').AsFloat),ThousandSeparator,'',[rfReplaceAll]);

          TotalFluxoCaixa := TotalFluxoCaixa + StrtoFloat(StringReplace(TotalFluxo,ThousandSeparator,'',[rfReplaceAll]));

        end;//if

         ibTempVendaLoja.Next;

      end;//while

      lbl_edtTotalFluxo.Text := FormatFloat(CasasDecimais('Produtos'),TotalFluxoCaixa);

  end;//with

end;

procedure TfrmFluxoCaixa.FormShow(Sender: TObject);
begin

  dtpData.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  with dmModule do begin

    ExecSELECT;
    
    with dbgFluxoCaixa do begin

      if MontaColunas Then begin

        DataSource := dmModule.dtsTempVendaLoja;

        Columns.Insert(0);
        Columns.Insert(1);
        Columns.Insert(2);
        Columns.Insert(3);
        Columns.Insert(4);
        Columns.Insert(5);

        //Parametros da Coluna que exibe o C�digo do Produto
        // Parametros que exibe o nome do produto
        Columns.Items[0].Title.Caption := 'N� Cupom';
        Columns.Items[0].FieldName     := 'IDSERVSVENDA';
        Columns.Items[0].Width         := 70;
        Columns.Items[0].Alignment     := taLeftJustify;


        Columns.Items[1].Title.Caption := 'Produto';
        Columns.Items[1].FieldName     := 'NOMEPROD';
        Columns.Items[1].Width         := 250;
        Columns.Items[1].Alignment     := taLeftJustify;


        // Parametros que exibe o Bico da Bomba
        Columns.Items[2].Title.Caption := 'Vlr.Unit.';
        Columns.Items[2].FieldName     := 'VLRUNIT';
        Columns.Items[2].Width         := 80;
        Columns.Items[2].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[3].Title.Caption := 'Qtde.';
        Columns.Items[3].FieldName     := 'QTDE';
        Columns.Items[3].Width         := 70;
        Columns.Items[3].Alignment     := taLeftJustify;

        // Parametros que exibe o Bico da Bomba
        Columns.Items[4].Title.Caption := 'Total';
        Columns.Items[4].FieldName     := 'VLRTOTAL';
        Columns.Items[4].Width         := 80;
        Columns.Items[4].Alignment     := taLeftJustify;

        Columns.Items[5].Title.Caption := 'Data';
        Columns.Items[5].FieldName     := 'DATA';
        Columns.Items[5].Width         := 80;
        Columns.Items[5].Alignment     := taLeftJustify;

        MontaColunas := False;

      end;{if}

    end;{with monta colunas}

  end;//with
  
end;

procedure TfrmFluxoCaixa.FormCreate(Sender: TObject);
begin
MontaColunas := True;
end;

procedure TfrmFluxoCaixa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  with dmModule do begin

    case key of

       VK_f2:Begin

         frmFluxoCaixa.Close;

       end;{begin}

     end;

  end;//with

end;

end.
