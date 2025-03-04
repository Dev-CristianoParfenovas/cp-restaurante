unit untPimaco6087;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IBQuery,
  StdCtrls;

type
  TfrmPimaco6087 = class(TForm)
    GroupBox1: TGroupBox;
    ckEtiqueta1: TCheckBox;
    ckEtiqueta2: TCheckBox;
    ckEtiqueta3: TCheckBox;
    ckEtiqueta4: TCheckBox;
    ckEtiqueta5: TCheckBox;
    ckEtiqueta6: TCheckBox;
    ckEtiqueta7: TCheckBox;
    ckEtiqueta8: TCheckBox;
    ckEtiqueta9: TCheckBox;
    ckEtiqueta10: TCheckBox;
    ckEtiqueta16: TCheckBox;
    ckEtiqueta11: TCheckBox;
    ckEtiqueta17: TCheckBox;
    ckEtiqueta12: TCheckBox;
    ckEtiqueta18: TCheckBox;
    ckEtiqueta13: TCheckBox;
    ckEtiqueta19: TCheckBox;
    ckEtiqueta14: TCheckBox;
    ckEtiqueta20: TCheckBox;
    ckEtiqueta15: TCheckBox;
    ckEtiqueta26: TCheckBox;
    ckEtiqueta21: TCheckBox;
    ckEtiqueta27: TCheckBox;
    ckEtiqueta22: TCheckBox;
    ckEtiqueta28: TCheckBox;
    ckEtiqueta23: TCheckBox;
    ckEtiqueta29: TCheckBox;
    ckEtiqueta24: TCheckBox;
    ckEtiqueta30: TCheckBox;
    ckEtiqueta25: TCheckBox;
    ckEtiqueta46: TCheckBox;
    ckEtiqueta47: TCheckBox;
    ckEtiqueta41: TCheckBox;
    ckEtiqueta42: TCheckBox;
    ckEtiqueta48: TCheckBox;
    ckEtiqueta43: TCheckBox;
    ckEtiqueta49: TCheckBox;
    ckEtiqueta44: TCheckBox;
    ckEtiqueta50: TCheckBox;
    ckEtiqueta45: TCheckBox;
    ckEtiqueta36: TCheckBox;
    ckEtiqueta31: TCheckBox;
    ckEtiqueta37: TCheckBox;
    ckEtiqueta32: TCheckBox;
    ckEtiqueta38: TCheckBox;
    ckEtiqueta33: TCheckBox;
    ckEtiqueta39: TCheckBox;
    ckEtiqueta34: TCheckBox;
    ckEtiqueta40: TCheckBox;
    ckEtiqueta35: TCheckBox;
    ckEtiqueta56: TCheckBox;
    ckEtiqueta51: TCheckBox;
    ckEtiqueta57: TCheckBox;
    ckEtiqueta52: TCheckBox;
    ckEtiqueta58: TCheckBox;
    ckEtiqueta53: TCheckBox;
    ckEtiqueta59: TCheckBox;
    ckEtiqueta54: TCheckBox;
    ckEtiqueta60: TCheckBox;
    ckEtiqueta55: TCheckBox;
    ckEtiqueta67: TCheckBox;
    ckEtiqueta61: TCheckBox;
    ckEtiqueta68: TCheckBox;
    ckEtiqueta62: TCheckBox;
    ckEtiqueta69: TCheckBox;
    ckEtiqueta63: TCheckBox;
    ckEtiqueta70: TCheckBox;
    ckEtiqueta64: TCheckBox;
    ckEtiqueta71: TCheckBox;
    ckEtiqueta65: TCheckBox;
    ckEtiqueta77: TCheckBox;
    ckEtiqueta72: TCheckBox;
    ckEtiqueta78: TCheckBox;
    ckEtiqueta73: TCheckBox;
    ckEtiqueta79: TCheckBox;
    ckEtiqueta74: TCheckBox;
    ckEtiqueta80: TCheckBox;
    ckEtiqueta75: TCheckBox;
    ckEtiqueta81: TCheckBox;
    ckEtiqueta76: TCheckBox;
    ckMarcarTodos: TCheckBox;
    ckMarcar11a20: TCheckBox;
    ckMarcar21a30: TCheckBox;
    ckMarcar31a40: TCheckBox;
    ckMarcar41a50: TCheckBox;
    ckMarcar51a60: TCheckBox;
    ckMarcar61a70: TCheckBox;
    ckMarcar71a80: TCheckBox;
    ckMarcar1a10: TCheckBox;
    GroupBox2: TGroupBox;
    procedure ibeaSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure LimparBotoes;
    procedure MarcaTodos;
    procedure Marcar1a10;
    procedure Marcar11a20;
    procedure Marcar21a30;
    procedure Marcar31a40;
    procedure Marcar41a50;
    procedure Marcar51a60;
    procedure Marcar61a70;
    procedure Marcar71a80;
    procedure CriaCodigo(Cod : String; Imagem : TCanvas);
    procedure ibeaAbrirRelatorioClick(Sender: TObject);
    procedure ckMarcarTodosCheck(Sender: TObject);
    procedure ckMarcar11a20Check(Sender: TObject);
    procedure ckMarcar21a30Check(Sender: TObject);
    procedure ckMarcar31a40Check(Sender: TObject);
    procedure ckMarcar41a50Check(Sender: TObject);
    procedure ckMarcar51a60Check(Sender: TObject);
    procedure ckMarcar61a70Check(Sender: TObject);
    procedure ckMarcar71a80Check(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ckMarcar1a10Click(Sender: TObject);
    procedure ckMarcarTodosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPimaco6087: TfrmPimaco6087;

implementation

uses untdmModule, untProdutos_MPrima, untEtiquetasPimaco6087, funcPosto,
  untEtiquetas6087Ref;

{$R *.dfm}

procedure TfrmPimaco6087.ibeaSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmPimaco6087.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmPimaco6087.LimparBotoes;

begin

 // ckImprimirCompleto.Checked := False;
 // ckImprimirRef.Checked := False;
  ckMarcarTodos.Checked := False;
  ckMarcar1a10.Checked  := False;
  ckMarcar11a20.Checked := False;
  ckMarcar21a30.Checked := False;
  ckMarcar31a40.Checked := False;
  ckMarcar41a50.Checked := False;
  ckMarcar51a60.Checked := False;
  ckMarcar61a70.Checked := False;
  ckMarcar71a80.Checked := False;
  ckEtiqueta1.Checked   := False;
  ckEtiqueta2.Checked   := False;
  ckEtiqueta3.Checked   := False;
  ckEtiqueta4.Checked   := False;
  ckEtiqueta5.Checked   := False;
  ckEtiqueta6.Checked   := False;
  ckEtiqueta7.Checked   := False;
  ckEtiqueta8.Checked   := False;
  ckEtiqueta9.Checked   := False;
  ckEtiqueta10.Checked  := False;
  ckEtiqueta11.Checked  := False;
  ckEtiqueta12.Checked  := False;
  ckEtiqueta13.Checked  := False;
  ckEtiqueta14.Checked  := False;
  ckEtiqueta15.Checked  := False;
  ckEtiqueta16.Checked  := False;
  ckEtiqueta17.Checked  := False;
  ckEtiqueta18.Checked  := False;
  ckEtiqueta19.Checked  := False;
  ckEtiqueta20.Checked  := False;
  ckEtiqueta21.Checked  := False;
  ckEtiqueta22.Checked  := False;
  ckEtiqueta23.Checked  := False;
  ckEtiqueta24.Checked  := False;
  ckEtiqueta25.Checked  := False;
  ckEtiqueta26.Checked  := False;
  ckEtiqueta27.Checked  := False;
  ckEtiqueta28.Checked  := False;
  ckEtiqueta29.Checked  := False;
  ckEtiqueta30.Checked  := False;
  ckEtiqueta31.Checked  := False;
  ckEtiqueta32.Checked  := False;
  ckEtiqueta33.Checked  := False;
  ckEtiqueta34.Checked  := False;
  ckEtiqueta35.Checked  := False;
  ckEtiqueta36.Checked  := False;
  ckEtiqueta37.Checked  := False;
  ckEtiqueta38.Checked  := False;
  ckEtiqueta39.Checked  := False;
  ckEtiqueta40.Checked  := False;
  ckEtiqueta41.Checked  := False;
  ckEtiqueta42.Checked  := False;
  ckEtiqueta43.Checked  := False;
  ckEtiqueta44.Checked  := False;
  ckEtiqueta45.Checked  := False;
  ckEtiqueta46.Checked  := False;
  ckEtiqueta47.Checked  := False;
  ckEtiqueta48.Checked  := False;
  ckEtiqueta49.Checked  := False;
  ckEtiqueta50.Checked  := False;
  ckEtiqueta51.Checked  := False;
  ckEtiqueta52.Checked  := False;
  ckEtiqueta53.Checked  := False;
  ckEtiqueta54.Checked  := False;
  ckEtiqueta55.Checked  := False;
  ckEtiqueta56.Checked  := False;
  ckEtiqueta57.Checked  := False;
  ckEtiqueta58.Checked  := False;
  ckEtiqueta59.Checked  := False;
  ckEtiqueta60.Checked  := False;
  ckEtiqueta61.Checked  := False;
  ckEtiqueta62.Checked  := False;
  ckEtiqueta63.Checked  := False;
  ckEtiqueta64.Checked  := False;
  ckEtiqueta65.Checked  := False;
  ckEtiqueta67.Checked  := False;
  ckEtiqueta68.Checked  := False;
  ckEtiqueta69.Checked  := False;
  ckEtiqueta70.Checked  := False;
  ckEtiqueta71.Checked  := False;
  ckEtiqueta72.Checked  := False;
  ckEtiqueta73.Checked  := False;
  ckEtiqueta74.Checked  := False;
  ckEtiqueta75.Checked  := False;
  ckEtiqueta76.Checked  := False;
  ckEtiqueta77.Checked  := False;
  ckEtiqueta78.Checked  := False;
  ckEtiqueta79.Checked  := False;
  ckEtiqueta80.Checked  := False;
  ckEtiqueta81.Checked  := False;

end;


procedure TfrmPimaco6087.MarcaTodos;

begin

  if ckMarcarTodos.Checked Then begin

    ckEtiqueta1.Checked  := True;
    ckEtiqueta2.Checked  := True;
    ckEtiqueta3.Checked  := True;
    ckEtiqueta4.Checked  := True;
    ckEtiqueta5.Checked  := True;
    ckEtiqueta6.Checked  := True;
    ckEtiqueta7.Checked  := True;
    ckEtiqueta8.Checked  := True;
    ckEtiqueta9.Checked  := True;
    ckEtiqueta10.Checked := True;
    ckEtiqueta11.Checked := True;
    ckEtiqueta12.Checked := True;
    ckEtiqueta13.Checked := True;
    ckEtiqueta14.Checked := True;
    ckEtiqueta15.Checked := True;
    ckEtiqueta16.Checked := True;
    ckEtiqueta17.Checked := True;
    ckEtiqueta18.Checked := True;
    ckEtiqueta19.Checked := True;
    ckEtiqueta20.Checked := True;
    ckEtiqueta21.Checked := True;
    ckEtiqueta22.Checked := True;
    ckEtiqueta23.Checked := True;
    ckEtiqueta24.Checked := True;
    ckEtiqueta25.Checked := True;
    ckEtiqueta26.Checked := True;
    ckEtiqueta27.Checked := True;
    ckEtiqueta28.Checked := True;
    ckEtiqueta29.Checked := True;
    ckEtiqueta30.Checked := True;
    ckEtiqueta31.Checked := True;
    ckEtiqueta32.Checked := True;
    ckEtiqueta33.Checked := True;
    ckEtiqueta34.Checked := True;
    ckEtiqueta35.Checked := True;
    ckEtiqueta36.Checked := True;
    ckEtiqueta37.Checked := True;
    ckEtiqueta38.Checked := True;
    ckEtiqueta39.Checked := True;
    ckEtiqueta40.Checked := True;
    ckEtiqueta41.Checked := True;
    ckEtiqueta42.Checked := True;
    ckEtiqueta43.Checked := True;
    ckEtiqueta44.Checked := True;
    ckEtiqueta45.Checked := True;
    ckEtiqueta46.Checked := True;
    ckEtiqueta47.Checked := True;
    ckEtiqueta48.Checked := True;
    ckEtiqueta49.Checked := True;
    ckEtiqueta50.Checked := True;
    ckEtiqueta51.Checked := True;
    ckEtiqueta52.Checked := True;
    ckEtiqueta53.Checked := True;
    ckEtiqueta54.Checked := True;
    ckEtiqueta55.Checked := True;
    ckEtiqueta56.Checked := True;
    ckEtiqueta57.Checked := True;
    ckEtiqueta58.Checked := True;
    ckEtiqueta59.Checked := True;
    ckEtiqueta60.Checked := True;
    ckEtiqueta61.Checked := True;
    ckEtiqueta62.Checked := True;
    ckEtiqueta63.Checked := True;
    ckEtiqueta64.Checked := True;
    ckEtiqueta65.Checked := True;
    ckEtiqueta67.Checked := True;
    ckEtiqueta68.Checked := True;
    ckEtiqueta69.Checked := True;
    ckEtiqueta70.Checked := True;
    ckEtiqueta71.Checked := True;
    ckEtiqueta72.Checked := True;
    ckEtiqueta73.Checked := True;
    ckEtiqueta74.Checked := True;
    ckEtiqueta75.Checked := True;
    ckEtiqueta76.Checked := True;
    ckEtiqueta77.Checked := True;
    ckEtiqueta78.Checked := True;
    ckEtiqueta79.Checked := True;
    ckEtiqueta80.Checked := True;
    ckEtiqueta81.Checked := True;

  end else begin

    ckEtiqueta1.Checked  := False;
    ckEtiqueta2.Checked  := False;
    ckEtiqueta3.Checked  := False;
    ckEtiqueta4.Checked  := False;
    ckEtiqueta5.Checked  := False;
    ckEtiqueta6.Checked  := False;
    ckEtiqueta7.Checked  := False;
    ckEtiqueta8.Checked  := False;
    ckEtiqueta9.Checked  := False;
    ckEtiqueta10.Checked := False;
    ckEtiqueta11.Checked := False;
    ckEtiqueta12.Checked := False;
    ckEtiqueta13.Checked := False;
    ckEtiqueta14.Checked := False;
    ckEtiqueta15.Checked := False;
    ckEtiqueta16.Checked := False;
    ckEtiqueta17.Checked := False;
    ckEtiqueta18.Checked := False;
    ckEtiqueta19.Checked := False;
    ckEtiqueta20.Checked := False;
    ckEtiqueta21.Checked := False;
    ckEtiqueta22.Checked := False;
    ckEtiqueta23.Checked := False;
    ckEtiqueta24.Checked := False;
    ckEtiqueta25.Checked := False;
    ckEtiqueta26.Checked := False;
    ckEtiqueta27.Checked := False;
    ckEtiqueta28.Checked := False;
    ckEtiqueta29.Checked := False;
    ckEtiqueta30.Checked := False;
    ckEtiqueta31.Checked := False;
    ckEtiqueta32.Checked := False;
    ckEtiqueta33.Checked := False;
    ckEtiqueta34.Checked := False;
    ckEtiqueta35.Checked := False;
    ckEtiqueta36.Checked := False;
    ckEtiqueta37.Checked := False;
    ckEtiqueta38.Checked := False;
    ckEtiqueta39.Checked := False;
    ckEtiqueta40.Checked := False;
    ckEtiqueta41.Checked := False;
    ckEtiqueta42.Checked := False;
    ckEtiqueta43.Checked := False;
    ckEtiqueta44.Checked := False;
    ckEtiqueta45.Checked := False;
    ckEtiqueta46.Checked := False;
    ckEtiqueta47.Checked := False;
    ckEtiqueta48.Checked := False;
    ckEtiqueta49.Checked := False;
    ckEtiqueta50.Checked := False;
    ckEtiqueta51.Checked := False;
    ckEtiqueta52.Checked := False;
    ckEtiqueta53.Checked := False;
    ckEtiqueta54.Checked := False;
    ckEtiqueta55.Checked := False;
    ckEtiqueta56.Checked := False;
    ckEtiqueta57.Checked := False;
    ckEtiqueta58.Checked := False;
    ckEtiqueta59.Checked := False;
    ckEtiqueta60.Checked := False;
    ckEtiqueta61.Checked := False;
    ckEtiqueta62.Checked := False;
    ckEtiqueta63.Checked := False;
    ckEtiqueta64.Checked := False;
    ckEtiqueta65.Checked := False;
    ckEtiqueta67.Checked := False;
    ckEtiqueta68.Checked := False;
    ckEtiqueta69.Checked := False;
    ckEtiqueta70.Checked := False;
    ckEtiqueta71.Checked := False;
    ckEtiqueta72.Checked := False;
    ckEtiqueta73.Checked := False;
    ckEtiqueta74.Checked := False;
    ckEtiqueta75.Checked := False;
    ckEtiqueta76.Checked := False;
    ckEtiqueta77.Checked := False;
    ckEtiqueta78.Checked := False;
    ckEtiqueta79.Checked := False;
    ckEtiqueta80.Checked := False;
    ckEtiqueta81.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar1a10;

begin

  if ckMarcar1a10.Checked Then begin

    ckEtiqueta1.Checked  := True;
    ckEtiqueta2.Checked  := True;
    ckEtiqueta3.Checked  := True;
    ckEtiqueta4.Checked  := True;
    ckEtiqueta5.Checked  := True;
    ckEtiqueta6.Checked  := True;
    ckEtiqueta7.Checked  := True;
    ckEtiqueta8.Checked  := True;
    ckEtiqueta9.Checked  := True;
    ckEtiqueta10.Checked := True;

  end else begin

    ckEtiqueta1.Checked  := False;
    ckEtiqueta2.Checked  := False;
    ckEtiqueta3.Checked  := False;
    ckEtiqueta4.Checked  := False;
    ckEtiqueta5.Checked  := False;
    ckEtiqueta6.Checked  := False;
    ckEtiqueta7.Checked  := False;
    ckEtiqueta8.Checked  := False;
    ckEtiqueta9.Checked  := False;
    ckEtiqueta10.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar11a20;

begin

  if ckMarcar11a20.Checked Then begin

    ckEtiqueta11.Checked := True;
    ckEtiqueta12.Checked := True;
    ckEtiqueta13.Checked := True;
    ckEtiqueta14.Checked := True;
    ckEtiqueta15.Checked := True;
    ckEtiqueta16.Checked := True;
    ckEtiqueta17.Checked := True;
    ckEtiqueta18.Checked := True;
    ckEtiqueta19.Checked := True;
    ckEtiqueta20.Checked := True;

  end else begin

    ckEtiqueta11.Checked := False;
    ckEtiqueta12.Checked := False;
    ckEtiqueta13.Checked := False;
    ckEtiqueta14.Checked := False;
    ckEtiqueta15.Checked := False;
    ckEtiqueta16.Checked := False;
    ckEtiqueta17.Checked := False;
    ckEtiqueta18.Checked := False;
    ckEtiqueta19.Checked := False;
    ckEtiqueta20.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar21a30;

begin

  if ckMarcar21a30.Checked Then begin

    ckEtiqueta21.Checked := True;
    ckEtiqueta22.Checked := True;
    ckEtiqueta23.Checked := True;
    ckEtiqueta24.Checked := True;
    ckEtiqueta25.Checked := True;
    ckEtiqueta26.Checked := True;
    ckEtiqueta27.Checked := True;
    ckEtiqueta28.Checked := True;
    ckEtiqueta29.Checked := True;
    ckEtiqueta30.Checked := True;

  end else begin

    ckEtiqueta21.Checked := False;
    ckEtiqueta22.Checked := False;
    ckEtiqueta23.Checked := False;
    ckEtiqueta24.Checked := False;
    ckEtiqueta25.Checked := False;
    ckEtiqueta26.Checked := False;
    ckEtiqueta27.Checked := False;
    ckEtiqueta28.Checked := False;
    ckEtiqueta29.Checked := False;
    ckEtiqueta30.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar31a40;

begin

  if ckMarcar31a40.Checked Then begin

    ckEtiqueta31.Checked := True;
    ckEtiqueta32.Checked := True;
    ckEtiqueta33.Checked := True;
    ckEtiqueta34.Checked := True;
    ckEtiqueta35.Checked := True;
    ckEtiqueta36.Checked := True;
    ckEtiqueta37.Checked := True;
    ckEtiqueta38.Checked := True;
    ckEtiqueta39.Checked := True;
    ckEtiqueta40.Checked := True;

  end else begin

    ckEtiqueta31.Checked := False;
    ckEtiqueta32.Checked := False;
    ckEtiqueta33.Checked := False;
    ckEtiqueta34.Checked := False;
    ckEtiqueta35.Checked := False;
    ckEtiqueta36.Checked := False;
    ckEtiqueta37.Checked := False;
    ckEtiqueta38.Checked := False;
    ckEtiqueta39.Checked := False;
    ckEtiqueta40.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar41a50;

begin

  if ckMarcar41a50.Checked Then begin

    ckEtiqueta41.Checked := True;
    ckEtiqueta42.Checked := True;
    ckEtiqueta43.Checked := True;
    ckEtiqueta44.Checked := True;
    ckEtiqueta45.Checked := True;
    ckEtiqueta46.Checked := True;
    ckEtiqueta47.Checked := True;
    ckEtiqueta48.Checked := True;
    ckEtiqueta49.Checked := True;
    ckEtiqueta50.Checked := True;

  end else begin

    ckEtiqueta41.Checked := False;
    ckEtiqueta42.Checked := False;
    ckEtiqueta43.Checked := False;
    ckEtiqueta44.Checked := False;
    ckEtiqueta45.Checked := False;
    ckEtiqueta46.Checked := False;
    ckEtiqueta47.Checked := False;
    ckEtiqueta48.Checked := False;
    ckEtiqueta49.Checked := False;
    ckEtiqueta50.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar51a60;

begin

  if ckMarcar51a60.Checked Then begin

    ckEtiqueta51.Checked := True;
    ckEtiqueta52.Checked := True;
    ckEtiqueta53.Checked := True;
    ckEtiqueta54.Checked := True;
    ckEtiqueta55.Checked := True;
    ckEtiqueta56.Checked := True;
    ckEtiqueta57.Checked := True;
    ckEtiqueta58.Checked := True;
    ckEtiqueta59.Checked := True;
    ckEtiqueta60.Checked := True;

  end else begin

    ckEtiqueta51.Checked := False;
    ckEtiqueta52.Checked := False;
    ckEtiqueta53.Checked := False;
    ckEtiqueta54.Checked := False;
    ckEtiqueta55.Checked := False;
    ckEtiqueta56.Checked := False;
    ckEtiqueta57.Checked := False;
    ckEtiqueta58.Checked := False;
    ckEtiqueta59.Checked := False;
    ckEtiqueta60.Checked := False;

  end;//if

end;

procedure TfrmPimaco6087.Marcar61a70;

begin

   if ckMarcar61a70.Checked Then begin

    ckEtiqueta61.Checked := True;
    ckEtiqueta62.Checked := True;
    ckEtiqueta63.Checked := True;
    ckEtiqueta64.Checked := True;
    ckEtiqueta65.Checked := True;
    ckEtiqueta67.Checked := True;
    ckEtiqueta68.Checked := True;
    ckEtiqueta69.Checked := True;
    ckEtiqueta70.Checked := True;
    ckEtiqueta71.Checked := True;

   end else begin

    ckEtiqueta61.Checked := False;
    ckEtiqueta62.Checked := False;
    ckEtiqueta63.Checked := False;
    ckEtiqueta64.Checked := False;
    ckEtiqueta65.Checked := False;
    ckEtiqueta67.Checked := False;
    ckEtiqueta68.Checked := False;
    ckEtiqueta69.Checked := False;
    ckEtiqueta70.Checked := False;
    ckEtiqueta71.Checked := False;

   end;//if

end;

procedure TfrmPimaco6087.Marcar71a80;

begin

  if ckMarcar71a80.Checked Then begin

    ckEtiqueta72.Checked := True;
    ckEtiqueta73.Checked := True;
    ckEtiqueta74.Checked := True;
    ckEtiqueta75.Checked := True;
    ckEtiqueta76.Checked := True;
    ckEtiqueta77.Checked := True;
    ckEtiqueta78.Checked := True;
    ckEtiqueta79.Checked := True;
    ckEtiqueta80.Checked := True;
    ckEtiqueta81.Checked := True;

  end else begin

    ckEtiqueta72.Checked := False;
    ckEtiqueta73.Checked := False;
    ckEtiqueta74.Checked := False;
    ckEtiqueta75.Checked := False;
    ckEtiqueta76.Checked := False;
    ckEtiqueta77.Checked := False;
    ckEtiqueta78.Checked := False;
    ckEtiqueta79.Checked := False;
    ckEtiqueta80.Checked := False;
    ckEtiqueta81.Checked := False;

  end;//if

end;

Procedure TfrmPimaco6087.CriaCodigo(Cod : String; Imagem : TCanvas);

Const
  digitos : array['0'..'9'] of string[5]= ('00110',
  '10001',
  '01001',
  '11000',
  '00101',
  '10100',
  '01100',
  '00011',
  '10010',
  '01010');
Var
  Numero : String;
  Cod1 : Array[1..1000] Of Char;
  Cod2 : Array[1..1000] Of Char;
  Codigo : Array[1..1000] Of Char;
  Digito : String;
  c1,c2 : Integer;
  x,y,z,h : LongInt;
  a,b,c,d : TPoint;
  I : Boolean;
Begin
  Numero := Cod;
  For x := 1 to 1000 Do
  Begin
    Cod1 [x] := #0;
    Cod2 [x] := #0;
    Codigo[x] := #0;
  End;
  c1 := 1;
  c2 := 1;
  x := 1;
  For y := 1 to Length(Numero) div 2 do
  Begin
    Digito := Digitos[Numero[x ]];
    For z := 1 to 5 do
    Begin
      Cod1[c1] := Digito[z];
      Inc(c1);
    End;
    Digito := Digitos[Numero[x+1]];
    For z := 1 to 5 do
    Begin
      Cod2[c2] := Digito[z];
      Inc(c2);
    End;
    Inc(x,2);
  End;
  y := 5;
  Codigo[1] := '0'; 
  Codigo[2] := '0';
  Codigo[3] := '0';
  Codigo[4] := '0'; { Inicio do Codigo }
  For x := 1 to c1-1 do
  begin
    Codigo[y] := Cod1[x]; Inc(y);
    Codigo[y] := Cod2[x]; Inc(y);
  end;
  Codigo[y] := '1'; Inc(y); { Final do Codigo }
  Codigo[y] := '0'; Inc(y);
  Codigo[y] := '0';
  Imagem.Pen .Width := 1;
  Imagem.Brush.Color := ClWhite;
  Imagem.Pen .Color := ClWhite;
  a.x := 1; a.y := 0;
  b.x := 1; b.y := 79;
  c.x := 2000; c.y := 79;
  d.x := 2000; d.y := 0;
  Imagem.Polygon([a,b,c,d]);
  Imagem.Brush.Color := ClBlack;
  Imagem.Pen .Color := ClBlack;
  x := 0;
  i := True;
  for y:=1 to 1000 do
  begin
    If Codigo[y] <> #0 Then
    Begin
      If Codigo[y] = '0' then 
        h := 1 
      Else 
        h := 3;
      a.x := x; a.y := 0;
      b.x := x; b.y := 79;
      c.x := x+h-1; c.y := 79;
      d.x := x+h-1; d.y := 0;
      If i Then 
        Imagem.Polygon([a,b,c,d]);
      i := Not(i);
      x := x + h;
    End;
  end;
end;


procedure TfrmPimaco6087.ibeaAbrirRelatorioClick(Sender: TObject);

var

CodBarras, NomeProd, ValorProd,Referencia : String;

begin
  with dmModule do begin

  if frmProd_MPrima.lbl_edtNomeProduto.Text = '' Then begin

    Application.MessageBox('Por Favor selecione um Produto','Notifica��o:Produto n�o Selecionado', + MB_OK+MB_ICONQUESTION);

  end else begin


    Commit(ibTempProd);
    ibTempProd.Close;
    ibTempProd.SQL.Clear;
    ibTempProd.SQL.Add('SELECT * FROM CADPRODUTOS WHERE IDPROD=''' + frmProd_MPrima.lbl_edtCodigo.Text + '''');
    ibTempProd.Open;

  //  (ibTempProdutos.FieldByName('VALORCUSTO') as TFloatField).DisplayFormat         := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
 //   (ibTempProdutos.FieldByName('VALORVENDAA') as TFloatField).DisplayFormat        := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO
 //   (ibTempProdutos.FieldByName('VLRPROM') as TFloatField).DisplayFormat            := CasasDecimais('Produtos'); //CRIA UMA MASCARA PARA O CAMPO


  {if ckImprimirCompleto.Checked Then begin

    Application.CreateForm(TfrmEtiquetasPimaco6087,frmEtiquetasPimaco6087);

    TRY  }

      with frmEtiquetasPimaco6087 do begin

        frmEtiquetasPimaco6087.qrpPimaco6087.DataSet := ibTempProd;

        if ibTempProd.FieldByName('CODBARRASAD').AsString <> '' Then begin



        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Text        := ibTempProdutos.FieldByName('CODBARRASAD').AsString;
          CodBarras  := ibTempProd.FieldByName('CODBARRASAD').AsString;
          NomeProd   := (ibTempProd.FieldByName('NOME').AsString);
          ValorProd  := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
          Referencia := (ibTempProd.FieldByName('REF').AsString);
        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Top         := 0;
        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Left        := 7;

       //  frmRelCodBarrasAD.qriCod12.Picture     := nil;

        ///////////////////////////////////////////

         if ckEtiqueta1.Checked Then begin

           CriaCodigo(CodBarras,qriCod1.Canvas);
           qrl_Referencia1.Caption  := Referencia ;
           qrl_CodB1.Caption        := CodBarras;

         end else begin

           qriCod1.Picture := nil;
           qrl_Referencia1.Caption  := '';
           qrl_CodB1.Caption        := '';
          // qrl_Ref1.Caption         := '';

         end;

        ////////////////////////////////////////////
         if ckEtiqueta2.Checked Then begin

           CriaCodigo(CodBarras,qriCod2.Canvas);
           qrl_Referencia2.Caption  := Referencia ;
           qrl_CodB2.Caption        := CodBarras;

         end else begin

           qriCod2.Picture := nil;
           qrl_Referencia2.Caption  := '';
           qrl_CodB2.Caption        := '';
          // qrl_Ref2.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta3.Checked Then begin

           CriaCodigo(CodBarras,qriCod3.Canvas);
           qrl_Referencia3.Caption  := Referencia ;
           qrl_CodB3.Caption        := CodBarras;

         end else begin

           qriCod3.Picture := nil;
           qrl_Referencia3.Caption  := '';
           qrl_CodB3.Caption        := '';
          // qrl_Ref3.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta4.Checked Then begin

           CriaCodigo(CodBarras,qriCod4.Canvas);
           qrl_Referencia4.Caption  := Referencia ;
           qrl_CodB4.Caption        := CodBarras;

         end else begin

           qriCod4.Picture := nil;
           qrl_Referencia4.Caption  := '';
           qrl_CodB4.Caption        := '';
          // qrl_Ref4.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta5.Checked Then begin

           CriaCodigo(CodBarras,qriCod5.Canvas);
           qrl_Referencia5.Caption  := Referencia ;
           qrl_CodB5.Caption        := CodBarras;

         end else begin

           qriCod5.Picture := nil;
           qrl_Referencia5.Caption  := '';
           qrl_CodB5.Caption        := '';
         //  qrl_Ref5.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta6.Checked Then begin

           CriaCodigo(CodBarras,qriCod6.Canvas);
           qrl_Referencia6.Caption  := Referencia ;
           qrl_CodB6.Caption        := CodBarras;

         end else begin

           qriCod6.Picture := nil;
           qrl_Referencia6.Caption  := '';
           qrl_CodB6.Caption        := '';
         //  qrl_Ref6.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta7.Checked Then begin

           CriaCodigo(CodBarras,qriCod7.Canvas);
           qrl_Referencia7.Caption  := Referencia ;
           qrl_CodB7.Caption        := CodBarras;

         end else begin

           qriCod7.Picture := nil;
           qrl_Referencia7.Caption  := '';
           qrl_CodB7.Caption        := '';
         //  qrl_Ref7.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta8.Checked Then begin

           CriaCodigo(CodBarras,qriCod8.Canvas);
           qrl_Referencia8.Caption  := Referencia ;
           qrl_CodB8.Caption        := CodBarras;

         end else begin

           qriCod8.Picture := nil;
           qrl_Referencia8.Caption  := '';
           qrl_CodB8.Caption        := '';
         //  qrl_Ref8.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta9.Checked Then begin

           CriaCodigo(CodBarras,qriCod9.Canvas);
           qrl_Referencia9.Caption  := Referencia ;
           qrl_CodB9.Caption        := CodBarras;

         end else begin

           qriCod9.Picture := nil;
           qrl_Referencia9.Caption  := '';
           qrl_CodB9.Caption        := '';
         //  qrl_Ref9.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta10.Checked Then begin

           CriaCodigo(CodBarras,qriCod10.Canvas);
           qrl_Referencia10.Caption  := Referencia ;
           qrl_CodB10.Caption        := CodBarras;

         end else begin

           qriCod10.Picture := nil;
           qrl_Referencia10.Caption  := '';
           qrl_CodB10.Caption        := '';
          // qrl_Ref10.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta11.Checked Then begin

           CriaCodigo(CodBarras,qriCod11.Canvas);
           qrl_Referencia11.Caption  := Referencia ;
           qrl_CodB11.Caption        := CodBarras;

         end else begin

           qriCod11.Picture := nil;
           qrl_Referencia11.Caption  := '';
           qrl_CodB11.Caption        := '';
         //  qrl_Ref11.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta12.Checked Then begin

           CriaCodigo(CodBarras,qriCod12.Canvas);
           qrl_Referencia12.Caption  := Referencia ;
           qrl_CodB12.Caption        := CodBarras;

         end else begin

           qriCod12.Picture := nil;
           qrl_Referencia12.Caption  := '';
           qrl_CodB12.Caption        := '';
        //   qrl_Ref12.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta13.Checked Then begin

           CriaCodigo(CodBarras,qriCod13.Canvas);
           qrl_Referencia13.Caption  := Referencia ;
           qrl_CodB13.Caption        := CodBarras;

         end else begin

           qriCod13.Picture := nil;
           qrl_Referencia13.Caption  := '';
           qrl_CodB13.Caption        := '';
          // qrl_Ref13.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta14.Checked Then begin

           CriaCodigo(CodBarras,qriCod14.Canvas);
           qrl_Referencia14.Caption  := Referencia ;
           qrl_CodB14.Caption        := CodBarras;

         end else begin

           qriCod14.Picture := nil;
           qrl_Referencia14.Caption  := '';
           qrl_CodB14.Caption        := '';
         //  qrl_Ref14.Caption         := '';

         end;
        ////////////////////////////////////////////


         if ckEtiqueta15.Checked Then begin

           CriaCodigo(CodBarras,qriCod15.Canvas);
           qrl_Referencia15.Caption  := Referencia ;
           qrl_CodB15.Caption        := CodBarras;

         end else begin

           qriCod15.Picture := nil;
           qrl_Referencia15.Caption  := '';
           qrl_CodB15.Caption        := '';
          // qrl_Ref15.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta16.Checked Then begin

           CriaCodigo(CodBarras,qriCod16.Canvas);
           qrl_Referencia16.Caption  := Referencia ;
           qrl_CodB16.Caption        := CodBarras;

         end else begin

           qriCod16.Picture := nil;
           qrl_Referencia16.Caption  := '';
           qrl_CodB16.Caption        := '';
          // qrl_Ref16.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta17.Checked Then begin

           CriaCodigo(CodBarras,qriCod17.Canvas);
           qrl_Referencia17.Caption  := Referencia ;
           qrl_CodB17.Caption        := CodBarras;

         end else begin

           qriCod17.Picture := nil;
           qrl_Referencia17.Caption  := '';
           qrl_CodB17.Caption        := '';
          // qrl_Ref17.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta18.Checked Then begin

           CriaCodigo(CodBarras,qriCod18.Canvas);
           qrl_Referencia18.Caption  := Referencia ;
           qrl_CodB18.Caption        := CodBarras;

         end else begin

           qriCod18.Picture := nil;
           qrl_Referencia18.Caption  := '';
           qrl_CodB18.Caption        := '';
         //  qrl_Ref18.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta19.Checked Then begin

           CriaCodigo(CodBarras,qriCod19.Canvas);
           qrl_Referencia19.Caption  := Referencia ;
           qrl_CodB19.Caption        := CodBarras;

         end else begin

           qriCod19.Picture := nil;
           qrl_Referencia19.Caption  := '';
           qrl_CodB19.Caption        := '';
         //  qrl_Ref19.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta20.Checked Then begin

           CriaCodigo(CodBarras,qriCod20.Canvas);
           qrl_Referencia20.Caption  := Referencia ;
           qrl_CodB20.Caption        := CodBarras;

         end else begin

           qriCod20.Picture := nil;
           qrl_Referencia20.Caption  := '';
           qrl_CodB20.Caption        := '';
          // qrl_Ref20.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta21.Checked Then begin

           CriaCodigo(CodBarras,qriCod21.Canvas);
           qrl_Referencia21.Caption  := Referencia ;
           qrl_CodB21.Caption        := CodBarras;

         end else begin

           qriCod21.Picture := nil;
           qrl_Referencia21.Caption  := '';
           qrl_CodB21.Caption        := '';
          // qrl_Ref21.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta22.Checked Then begin

           CriaCodigo(CodBarras,qriCod22.Canvas);
           qrl_Referencia22.Caption  := Referencia ;
           qrl_CodB22.Caption        := CodBarras;

         end else begin

           qriCod22.Picture := nil;
           qrl_Referencia22.Caption  := '';
           qrl_CodB22.Caption        := '';
          // qrl_Ref22.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta23.Checked Then begin

           CriaCodigo(CodBarras,qriCod23.Canvas);
           qrl_Referencia23.Caption  := Referencia ;
           qrl_CodB23.Caption        := CodBarras;

         end else begin

           qriCod23.Picture := nil;
           qrl_Referencia23.Caption  := '';
           qrl_CodB23.Caption        := '';
          // qrl_Ref23.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta24.Checked Then begin

           CriaCodigo(CodBarras,qriCod24.Canvas);
           qrl_Referencia24.Caption  := Referencia ;
           qrl_CodB24.Caption        := CodBarras;

         end else begin

           qriCod24.Picture := nil;
           qrl_Referencia24.Caption  := '';
           qrl_CodB24.Caption        := '';
          // qrl_Ref24.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta25.Checked Then begin

           CriaCodigo(CodBarras,qriCod25.Canvas);
           qrl_Referencia25.Caption  := Referencia ;
           qrl_CodB25.Caption        := CodBarras;

         end else begin

           qriCod25.Picture := nil;
           qrl_Referencia25.Caption  := '';
           qrl_CodB25.Caption        := '';
         //  qrl_Ref25.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta26.Checked Then begin

           CriaCodigo(CodBarras,qriCod26.Canvas);
           qrl_Referencia26.Caption  := Referencia ;
           qrl_CodB26.Caption        := CodBarras;

         end else begin

           qriCod26.Picture := nil;
           qrl_Referencia26.Caption  := '';
           qrl_CodB26.Caption        := '';
         //  qrl_Ref26.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta27.Checked Then begin

           CriaCodigo(CodBarras,qriCod27.Canvas);
           qrl_Referencia27.Caption  := Referencia ;
           qrl_CodB27.Caption        := CodBarras;

         end else begin

           qriCod27.Picture := nil;
           qrl_Referencia27.Caption  := '';
           qrl_CodB27.Caption        := '';
          // qrl_Ref27.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta28.Checked Then begin

           CriaCodigo(CodBarras,qriCod28.Canvas);
           qrl_Referencia28.Caption  := Referencia ;
           qrl_CodB28.Caption        := CodBarras;

         end else begin

           qriCod28.Picture := nil;
           qrl_Referencia28.Caption  := '';
           qrl_CodB28.Caption        := '';
          // qrl_Ref28.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta29.Checked Then begin

           CriaCodigo(CodBarras,qriCod29.Canvas);
           qrl_Referencia29.Caption  := Referencia ;
           qrl_CodB29.Caption        := CodBarras;

         end else begin

           qriCod29.Picture := nil;
           qrl_Referencia29.Caption  := '';
           qrl_CodB29.Caption        := '';
         //  qrl_Ref29.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta30.Checked Then begin

           CriaCodigo(CodBarras,qriCod30.Canvas);
           qrl_Referencia30.Caption  := Referencia ;
           qrl_CodB30.Caption        := CodBarras;

         end else begin

           qriCod30.Picture := nil;
           qrl_Referencia30.Caption  := '';
           qrl_CodB30.Caption        := '';
          // qrl_Ref30.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta31.Checked Then begin

           CriaCodigo(CodBarras,qriCod31.Canvas);
           qrl_Referencia31.Caption  := Referencia ;
           qrl_CodB31.Caption        := CodBarras;

         end else begin

           qriCod31.Picture := nil;
           qrl_Referencia31.Caption  := '';
           qrl_CodB31.Caption        := '';
         //  qrl_Ref31.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta32.Checked Then begin

           CriaCodigo(CodBarras,qriCod32.Canvas);
           qrl_Referencia32.Caption  := Referencia ;
           qrl_CodB32.Caption        := CodBarras;

         end else begin

           qriCod32.Picture := nil;
           qrl_Referencia32.Caption  := '';
           qrl_CodB32.Caption        := '';
         //  qrl_Ref32.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta33.Checked Then begin

           CriaCodigo(CodBarras,qriCod33.Canvas);
           qrl_Referencia33.Caption  := Referencia ;
           qrl_CodB33.Caption        := CodBarras;

         end else begin

           qriCod33.Picture := nil;
           qrl_Referencia33.Caption  := '';
           qrl_CodB33.Caption        := '';
         //  qrl_Ref33.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta34.Checked Then begin

           CriaCodigo(CodBarras,qriCod34.Canvas);
           qrl_Referencia34.Caption  := Referencia ;
           qrl_CodB34.Caption        := CodBarras;

         end else begin

           qriCod34.Picture := nil;
           qrl_Referencia34.Caption  := '';
           qrl_CodB34.Caption        := '';
         //  qrl_Ref34.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta35.Checked Then begin

           CriaCodigo(CodBarras,qriCod35.Canvas);
           qrl_Referencia35.Caption  := Referencia ;
           qrl_CodB35.Caption        := CodBarras;

         end else begin

           qriCod35.Picture := nil;
           qrl_Referencia35.Caption  := '';
           qrl_CodB35.Caption        := '';
         //  qrl_Ref35.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta36.Checked Then begin

           CriaCodigo(CodBarras,qriCod36.Canvas);
           qrl_Referencia36.Caption  := Referencia ;
           qrl_CodB36.Caption        := CodBarras;

         end else begin

           qriCod36.Picture := nil;
           qrl_Referencia36.Caption  := '';
           qrl_CodB36.Caption        := '';
          // qrl_Ref36.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta37.Checked Then begin

           CriaCodigo(CodBarras,qriCod37.Canvas);
           qrl_Referencia37.Caption  := Referencia ;
           qrl_CodB37.Caption        := CodBarras;

         end else begin

           qriCod37.Picture := nil;
           qrl_Referencia37.Caption  := '';
           qrl_CodB37.Caption        := '';
         // qrl_Ref37.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta38.Checked Then begin

           CriaCodigo(CodBarras,qriCod38.Canvas);
           qrl_Referencia38.Caption  := Referencia ;
           qrl_CodB38.Caption        := CodBarras;

         end else begin

           qriCod38.Picture := nil;
           qrl_Referencia38.Caption  := '';
           qrl_CodB38.Caption        := '';
         //  qrl_Ref38.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta39.Checked Then begin

           CriaCodigo(CodBarras,qriCod39.Canvas);
           qrl_Referencia39.Caption  := Referencia ;
           qrl_CodB39.Caption        := CodBarras;

         end else begin

           qriCod39.Picture := nil;
           qrl_Referencia39.Caption  := '';
           qrl_CodB39.Caption        := '';
         //  qrl_Ref39.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta40.Checked Then begin

           CriaCodigo(CodBarras,qriCod40.Canvas);
           qrl_Referencia40.Caption  := Referencia ;
           qrl_CodB40.Caption        := CodBarras;

         end else begin

           qriCod40.Picture := nil;
           qrl_Referencia40.Caption  := '';
           qrl_CodB40.Caption        := '';
         //  qrl_Ref40.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta41.Checked Then begin

           CriaCodigo(CodBarras,qriCod41.Canvas);
           qrl_Referencia41.Caption  := Referencia ;
           qrl_CodB41.Caption        := CodBarras;

         end else begin

           qriCod41.Picture := nil;
           qrl_Referencia41.Caption  := '';
           qrl_CodB41.Caption        := '';
         //  qrl_Ref41.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta42.Checked Then begin

           CriaCodigo(CodBarras,qriCod42.Canvas);
           qrl_Referencia42.Caption  := Referencia ;
           qrl_CodB42.Caption        := CodBarras;

         end else begin

           qriCod42.Picture := nil;
           qrl_Referencia42.Caption  := '';
           qrl_CodB42.Caption        := '';
        //   qrl_Ref42.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta43.Checked Then begin

           CriaCodigo(CodBarras,qriCod43.Canvas);
           qrl_Referencia43.Caption  := Referencia ;
           qrl_CodB43.Caption        := CodBarras;

         end else begin

           qriCod43.Picture := nil;
           qrl_Referencia43.Caption  := '';
           qrl_CodB43.Caption        := '';
        //   qrl_Ref43.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta44.Checked Then begin

           CriaCodigo(CodBarras,qriCod44.Canvas);
           qrl_Referencia44.Caption  := Referencia ;
           qrl_CodB44.Caption        := CodBarras;

         end else begin

           qriCod44.Picture := nil;
           qrl_Referencia44.Caption  := '';
           qrl_CodB44.Caption        := '';
         //  qrl_Ref44.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta45.Checked Then begin

           CriaCodigo(CodBarras,qriCod45.Canvas);
           qrl_Referencia45.Caption  := Referencia ;
           qrl_CodB45.Caption        := CodBarras;

         end else begin

           qriCod45.Picture := nil;
           qrl_Referencia45.Caption  := '';
           qrl_CodB45.Caption        := '';
        //  qrl_Ref45.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta46.Checked Then begin

           CriaCodigo(CodBarras,qriCod46.Canvas);
           qrl_Referencia46.Caption  := Referencia ;
           qrl_CodB46.Caption        := CodBarras;

         end else begin

           qriCod46.Picture := nil;
           qrl_Referencia46.Caption  := '';
           qrl_CodB46.Caption        := '';
         //  qrl_Ref46.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta47.Checked Then begin

           CriaCodigo(CodBarras,qriCod47.Canvas);
           qrl_Referencia47.Caption  := Referencia ;
           qrl_CodB47.Caption        := CodBarras;

         end else begin

           qriCod47.Picture := nil;
           qrl_Referencia47.Caption  := '';
           qrl_CodB47.Caption        := '';
         //  qrl_Ref47.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta48.Checked Then begin

           CriaCodigo(CodBarras,qriCod48.Canvas);
           qrl_Referencia48.Caption  := Referencia ;
           qrl_CodB48.Caption        := CodBarras;

         end else begin

           qriCod48.Picture := nil;
           qrl_Referencia48.Caption  := '';
           qrl_CodB48.Caption        := '';
        //   qrl_Ref48.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta49.Checked Then begin

           CriaCodigo(CodBarras,qriCod49.Canvas);
           qrl_Referencia49.Caption  := Referencia ;
           qrl_CodB49.Caption        := CodBarras;

         end else begin

           qriCod49.Picture := nil;
           qrl_Referencia49.Caption  := '';
           qrl_CodB49.Caption        := '';
         //  qrl_Ref49.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta50.Checked Then begin

           CriaCodigo(CodBarras,qriCod50.Canvas);
           qrl_Referencia50.Caption  := Referencia ;
           qrl_CodB50.Caption        := CodBarras;

         end else begin

           qriCod50.Picture := nil;
           qrl_Referencia50.Caption  := '';
           qrl_CodB50.Caption        := '';
         //  qrl_Ref50.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta51.Checked Then begin

           CriaCodigo(CodBarras,qriCod51.Canvas);
           qrl_Referencia51.Caption  := Referencia ;
           qrl_CodB51.Caption        := CodBarras;

         end else begin

           qriCod51.Picture := nil;
           qrl_Referencia51.Caption  := '';
           qrl_CodB51.Caption        := '';
          // qrl_Ref51.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta52.Checked Then begin

           CriaCodigo(CodBarras,qriCod52.Canvas);
           qrl_Referencia52.Caption  := Referencia ;
           qrl_CodB52.Caption        := CodBarras;

         end else begin

           qriCod52.Picture := nil;
           qrl_Referencia52.Caption  := '';
           qrl_CodB52.Caption        := '';
         //  qrl_Ref52.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta53.Checked Then begin

           CriaCodigo(CodBarras,qriCod53.Canvas);
           qrl_Referencia53.Caption  := Referencia ;
           qrl_CodB53.Caption        := CodBarras;

         end else begin

           qriCod53.Picture := nil;
           qrl_Referencia53.Caption  := '';
           qrl_CodB53.Caption        := '';
         //  qrl_Ref53.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta54.Checked Then begin

           CriaCodigo(CodBarras,qriCod54.Canvas);
           qrl_Referencia54.Caption  := Referencia ;
           qrl_CodB54.Caption        := CodBarras;

         end else begin

           qriCod54.Picture := nil;
           qrl_Referencia54.Caption  := '';
           qrl_CodB54.Caption        := '';
         //  qrl_Ref54.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta55.Checked Then begin

           CriaCodigo(CodBarras,qriCod55.Canvas);
           qrl_Referencia55.Caption  := Referencia ;
           qrl_CodB55.Caption        := CodBarras;

         end else begin

           qriCod55.Picture := nil;
           qrl_Referencia55.Caption  := '';
           qrl_CodB55.Caption        := '';
          // qrl_Ref55.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta56.Checked Then begin

           CriaCodigo(CodBarras,qriCod56.Canvas);
           qrl_Referencia56.Caption  := Referencia ;
           qrl_CodB56.Caption        := CodBarras;

         end else begin

           qriCod56.Picture := nil;
           qrl_Referencia56.Caption  := '';
           qrl_CodB56.Caption        := '';
         //  qrl_Ref56.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta57.Checked Then begin

           CriaCodigo(CodBarras,qriCod57.Canvas);
           qrl_Referencia57.Caption  := Referencia ;
           qrl_CodB57.Caption        := CodBarras;

         end else begin

           qriCod57.Picture := nil;
           qrl_Referencia57.Caption  := '';
           qrl_CodB57.Caption        := '';
         //  qrl_Ref57.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta58.Checked Then begin

           CriaCodigo(CodBarras,qriCod58.Canvas);
           qrl_Referencia58.Caption  := Referencia ;
           qrl_CodB58.Caption        := CodBarras;

         end else begin

           qriCod58.Picture := nil;
           qrl_Referencia58.Caption  := '';
           qrl_CodB58.Caption        := '';
          // qrl_Ref58.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta59.Checked Then begin

           CriaCodigo(CodBarras,qriCod59.Canvas);
           qrl_Referencia59.Caption  := Referencia ;
           qrl_CodB59.Caption        := CodBarras;

         end else begin

           qriCod59.Picture := nil;
           qrl_Referencia59.Caption  := '';
           qrl_CodB59.Caption        := '';
         //  qrl_Ref59.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta60.Checked Then begin

           CriaCodigo(CodBarras,qriCod60.Canvas);
           qrl_Referencia60.Caption  := Referencia ;
           qrl_CodB60.Caption        := CodBarras;

         end else begin

           qriCod60.Picture := nil;
           qrl_Referencia60.Caption  := '';
           qrl_CodB60.Caption        := '';
         //  qrl_Ref60.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta61.Checked Then begin

           CriaCodigo(CodBarras,qriCod61.Canvas);
           qrl_Referencia61.Caption  := Referencia ;
           qrl_CodB61.Caption        := CodBarras;

         end else begin

           qriCod61.Picture := nil;
           qrl_Referencia61.Caption  := '';
           qrl_CodB61.Caption        := '';
         //  qrl_Ref61.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta62.Checked Then begin

           CriaCodigo(CodBarras,qriCod62.Canvas);
           qrl_Referencia62.Caption  := Referencia ;
           qrl_CodB62.Caption        := CodBarras;

         end else begin

           qriCod62.Picture := nil;
           qrl_Referencia62.Caption  := '';
           qrl_CodB62.Caption        := '';
         //  qrl_Ref62.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta63.Checked Then begin

           CriaCodigo(CodBarras,qriCod63.Canvas);
           qrl_Referencia63.Caption  := Referencia ;
           qrl_CodB63.Caption        := CodBarras;

         end else begin

           qriCod63.Picture := nil;
           qrl_Referencia63.Caption  := '';
           qrl_CodB63.Caption        := '';
        //   qrl_Ref63.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta64.Checked Then begin

           CriaCodigo(CodBarras,qriCod64.Canvas);
           qrl_Referencia64.Caption  := Referencia ;
           qrl_CodB64.Caption        := CodBarras;

         end else begin

           qriCod64.Picture := nil;
           qrl_Referencia64.Caption  := '';
           qrl_CodB64.Caption        := '';
         //  qrl_Ref64.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta65.Checked Then begin

           CriaCodigo(CodBarras,qriCod65.Canvas);
           qrl_Referencia65.Caption  := Referencia ;
           qrl_CodB65.Caption        := CodBarras;

         end else begin

           qriCod65.Picture := nil;
           qrl_Referencia65.Caption  := '';
           qrl_CodB65.Caption        := '';
         //  qrl_Ref65.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta67.Checked Then begin

           CriaCodigo(CodBarras,qriCod67.Canvas);
           qrl_Referencia67.Caption  := Referencia ;
           qrl_CodB67.Caption        := CodBarras;

         end else begin

           qriCod67.Picture := nil;
           qrl_Referencia67.Caption  := '';
           qrl_CodB67.Caption        := '';
         //  qrl_Ref67.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta68.Checked Then begin

           CriaCodigo(CodBarras,qriCod68.Canvas);
           qrl_Referencia68.Caption  := Referencia ;
           qrl_CodB68.Caption        := CodBarras;

         end else begin

           qriCod68.Picture := nil;
           qrl_Referencia68.Caption  := '';
           qrl_CodB68.Caption        := '';
          // qrl_Ref68.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta69.Checked Then begin

           CriaCodigo(CodBarras,qriCod69.Canvas);
           qrl_Referencia69.Caption  := Referencia ;
           qrl_CodB69.Caption        := CodBarras;

         end else begin

           qriCod69.Picture := nil;
           qrl_Referencia69.Caption  := '';
           qrl_CodB69.Caption        := '';
         //  qrl_Ref69.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta70.Checked Then begin

           CriaCodigo(CodBarras,qriCod70.Canvas);
           qrl_Referencia70.Caption  := Referencia ;
           qrl_CodB70.Caption        := CodBarras;

         end else begin

           qriCod70.Picture := nil;
           qrl_Referencia70.Caption  := '';
           qrl_CodB70.Caption        := '';
          // qrl_Ref70.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta71.Checked Then begin

           CriaCodigo(CodBarras,qriCod71.Canvas);
           qrl_Referencia71.Caption  := Referencia ;
           qrl_CodB71.Caption        := CodBarras;

         end else begin

           qriCod71.Picture := nil;
           qrl_Referencia71.Caption  := '';
           qrl_CodB71.Caption        := '';
          //qrl_Ref71.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta72.Checked Then begin

           CriaCodigo(CodBarras,qriCod72.Canvas);
           qrl_Referencia72.Caption  := Referencia ;
           qrl_CodB72.Caption        := CodBarras;

         end else begin

           qriCod72.Picture := nil;
           qrl_Referencia72.Caption  := '';
           qrl_CodB72.Caption        := '';
          // qrl_Ref72.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta73.Checked Then begin

           CriaCodigo(CodBarras,qriCod73.Canvas);
           qrl_Referencia73.Caption  := Referencia ;
           qrl_CodB73.Caption        := CodBarras;

         end else begin

           qriCod73.Picture := nil;
           qrl_Referencia73.Caption  := '';
           qrl_CodB73.Caption        := '';
         //  qrl_Ref73.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta74.Checked Then begin

           CriaCodigo(CodBarras,qriCod74.Canvas);
           qrl_Referencia74.Caption  := Referencia ;
           qrl_CodB74.Caption        := CodBarras;

         end else begin

           qriCod74.Picture := nil;
           qrl_Referencia74.Caption  := '';
           qrl_CodB74.Caption        := '';
          // qrl_Ref74.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta75.Checked Then begin

           CriaCodigo(CodBarras,qriCod75.Canvas);
           qrl_Referencia75.Caption  := Referencia ;
           qrl_CodB75.Caption        := CodBarras;

         end else begin

           qriCod75.Picture := nil;
           qrl_Referencia75.Caption  := '';
           qrl_CodB75.Caption        := '';
         //  qrl_Ref75.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta76.Checked Then begin

           CriaCodigo(CodBarras,qriCod76.Canvas);
           qrl_Referencia76.Caption  := Referencia ;
           qrl_CodB76.Caption        := CodBarras;

         end else begin

           qriCod76.Picture := nil;
           qrl_Referencia76.Caption  := '';
           qrl_CodB76.Caption        := '';
          // qrl_Ref76.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta77.Checked Then begin

           CriaCodigo(CodBarras,qriCod77.Canvas);
           qrl_Referencia77.Caption  := Referencia ;
           qrl_CodB77.Caption        := CodBarras;

         end else begin

           qriCod77.Picture := nil;
           qrl_Referencia77.Caption  := '';
           qrl_CodB77.Caption        := '';
         //  qrl_Ref77.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta78.Checked Then begin

           CriaCodigo(CodBarras,qriCod78.Canvas);
           qrl_Referencia78.Caption  := Referencia ;
           qrl_CodB78.Caption        := CodBarras;

         end else begin

           qriCod78.Picture := nil;
           qrl_Referencia78.Caption  := '';
           qrl_CodB78.Caption        := '';
         //  qrl_Ref78.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta79.Checked Then begin

           CriaCodigo(CodBarras,qriCod79.Canvas);
           qrl_Referencia79.Caption  := Referencia ;
           qrl_CodB79.Caption        := CodBarras;

         end else begin

           qriCod79.Picture := nil;
           qrl_Referencia79.Caption  := '';
           qrl_CodB79.Caption        := '';
          // qrl_Ref79.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta80.Checked Then begin

           CriaCodigo(CodBarras,qriCod80.Canvas);
           qrl_Referencia80.Caption  := Referencia ;
           qrl_CodB80.Caption        := CodBarras;

         end else begin

           qriCod80.Picture := nil;
           qrl_Referencia80.Caption  := '';
           qrl_CodB80.Caption        := '';
         //  qrl_Ref80.Caption         := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta81.Checked Then begin

           CriaCodigo(CodBarras,qriCod81.Canvas);
           qrl_Referencia81.Caption  := Referencia ;
           qrl_CodB81.Caption        := CodBarras;

         end else begin

           qriCod81.Picture := nil;
           qrl_Referencia81.Caption  := '';
           qrl_CodB81.Caption        := '';
          // qrl_Ref81.Caption         := '';

         end;   
        ////////////////////////////////////////////


        end;{if}

       //   qrpPimaco6087.Preview;

      end; {if}


   { EXCEPT
      on E : Exception do begin
         frmEtiquetasPimaco6087.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;    }

    end;{if}

  end;//if ckimprimircompleto

////////////////////////////////////////////////////////////////////////////////

  //if ckImprimirRef.Checked Then begin

    //Application.CreateForm(TfrmEtiquetas6087Ref,frmEtiquetas6087Ref);

   // TRY

   {   with frmEtiquetas6087Ref do begin

        frmEtiquetas6087Ref.qrp6087Ref.DataSet := ibTempProd;

        if ibTempProd.FieldByName('CODBARRASAD').AsString <> '' Then begin



        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Text        := ibTempProdutos.FieldByName('CODBARRASAD').AsString;
        //  CodBarras  := ibTempProd.FieldByName('CODBARRASAD').AsString;
       //  NomeProd   := (ibTempProd.FieldByName('NOME').AsString);
          ValorProd  := FormatFloat(CasasDecimais('Produtos'),ibTempProd.FieldByName('VALORVENDAA').AsFloat);
        //  Referencia := (ibTempProd.FieldByName('REF').AsString);
        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Top         := 0;
        //  frmRelCodBarrasAD.GeraCodigoBarraAD.Left        := 7;

       //  frmRelCodBarrasAD.qriCod12.Picture     := nil;

        ///////////////////////////////////////////

         if ckEtiqueta1.Checked Then begin

          // CriaCodigo(CodBarras,qriCod1.Canvas);
           qrl_Referencia1.Caption  := Referencia ;
           qrlValor1.Caption        := ValorProd;

         end else begin

         //  qriCod1.Picture := nil;
           qrl_Referencia1.Caption  := '';
         //  qrl_CodB1.Caption        := '';
           qrl_Ref1.Caption         := '';
           qrlValor1.Caption        := '';

         end;

        ////////////////////////////////////////////
         if ckEtiqueta2.Checked Then begin

           //CriaCodigo(CodBarras,qriCod2.Canvas);
           qrl_Referencia2.Caption  := Referencia ;
         //  qrl_CodB2.Caption        := CodBarras;
           qrlValor2.Caption        := ValorProd;

         end else begin

         //  qriCod2.Picture := nil;
           qrl_Referencia2.Caption  := '';
        //   qrl_CodB2.Caption        := '';
           qrl_Ref2.Caption         := '';
           qrlValor2.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta3.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod3.Canvas);
           qrl_Referencia3.Caption  := Referencia ;
         //  qrl_CodB3.Caption        := CodBarras;
           qrlValor3.Caption        := ValorProd;

         end else begin

          // qriCod3.Picture := nil;
           qrl_Referencia3.Caption  := '';
         //  qrl_CodB3.Caption        := '';
           qrl_Ref3.Caption         := '';
           qrlValor3.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta4.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod4.Canvas);
           qrl_Referencia4.Caption  := Referencia ;
         //  qrl_CodB4.Caption        := CodBarras;
           qrlValor4.Caption        := ValorProd;

         end else begin

         //  qriCod4.Picture := nil;
           qrl_Referencia4.Caption  := '';
         //  qrl_CodB4.Caption        := '';
           qrl_Ref4.Caption         := '';
           qrlValor4.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta5.Checked Then begin

          // CriaCodigo(CodBarras,qriCod5.Canvas);
           qrl_Referencia5.Caption  := Referencia ;
         //  qrl_CodB5.Caption        := CodBarras;
           qrlValor5.Caption        := ValorProd;

         end else begin

          // qriCod5.Picture := nil;
           qrl_Referencia5.Caption  := '';
         //  qrl_CodB5.Caption        := '';
           qrl_Ref5.Caption         := '';
           qrlValor5.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta6.Checked Then begin

        //   CriaCodigo(CodBarras,qriCod6.Canvas);
           qrl_Referencia6.Caption  := Referencia ;
        //   qrl_CodB6.Caption        := CodBarras;
           qrlValor6.Caption        := ValorProd;

         end else begin

        //   qriCod6.Picture := nil;
           qrl_Referencia6.Caption  := '';
         //  qrl_CodB6.Caption        := '';
           qrl_Ref6.Caption         := '';
           qrlValor6.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta7.Checked Then begin

        //   CriaCodigo(CodBarras,qriCod7.Canvas);
           qrl_Referencia7.Caption  := Referencia ;
        //   qrl_CodB7.Caption        := CodBarras;
           qrlValor7.Caption        := ValorProd;

         end else begin

        //   qriCod7.Picture := nil;
           qrl_Referencia7.Caption  := '';
       //    qrl_CodB7.Caption        := '';
           qrl_Ref7.Caption         := '';
           qrlValor7.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta8.Checked Then begin

        //   CriaCodigo(CodBarras,qriCod8.Canvas);
           qrl_Referencia8.Caption  := Referencia ;
        //   qrl_CodB8.Caption        := CodBarras;
           qrlValor8.Caption        := ValorProd;

         end else begin

         //  qriCod8.Picture := nil;
           qrl_Referencia8.Caption  := '';
        //   qrl_CodB8.Caption        := '';
           qrl_Ref8.Caption         := '';
           qrlValor8.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta9.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod9.Canvas);
           qrl_Referencia9.Caption  := Referencia ;
        //   qrl_CodB9.Caption        := CodBarras;
           qrlValor9.Caption        := ValorProd;

         end else begin

         //  qriCod9.Picture := nil;
           qrl_Referencia9.Caption  := '';
        //   qrl_CodB9.Caption        := '';
           qrl_Ref9.Caption         := '';
           qrlValor9.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta10.Checked Then begin

        //   CriaCodigo(CodBarras,qriCod10.Canvas);
           qrl_Referencia10.Caption  := Referencia ;
        //   qrl_CodB10.Caption        := CodBarras;
           qrlValor10.Caption        := ValorProd;

         end else begin

         //  qriCod10.Picture := nil;
           qrl_Referencia10.Caption  := '';
        //   qrl_CodB10.Caption        := '';
           qrl_Ref10.Caption         := '';
           qrlValor10.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta11.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod11.Canvas);
           qrl_Referencia11.Caption  := Referencia ;
         //  qrl_CodB11.Caption        := CodBarras;
           qrlValor11.Caption        := ValorProd;

         end else begin

         //  qriCod11.Picture := nil;
           qrl_Referencia11.Caption  := '';
          // qrl_CodB11.Caption        := '';
           qrl_Ref11.Caption         := '';
           qrlValor11.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta12.Checked Then begin

          // CriaCodigo(CodBarras,qriCod12.Canvas);
           qrl_Referencia12.Caption  := Referencia ;
         //  qrl_CodB12.Caption        := CodBarras;
           qrlValor12.Caption        := ValorProd;

         end else begin

         //  qriCod12.Picture := nil;
           qrl_Referencia12.Caption  := '';
         //  qrl_CodB12.Caption        := '';
           qrl_Ref12.Caption         := '';
           qrlValor12.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta13.Checked Then begin

          // CriaCodigo(CodBarras,qriCod13.Canvas);
           qrl_Referencia13.Caption  := Referencia ;
          // qrl_CodB13.Caption        := CodBarras;
           qrlValor13.Caption        := ValorProd;

         end else begin

         //  qriCod13.Picture := nil;
           qrl_Referencia13.Caption  := '';
         //  qrl_CodB13.Caption        := '';
           qrl_Ref13.Caption         := '';
           qrlValor13.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta14.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod14.Canvas);
           qrl_Referencia14.Caption  := Referencia ;
         //  qrl_CodB14.Caption        := CodBarras;
           qrlValor14.Caption        := ValorProd;

         end else begin

         //  qriCod14.Picture := nil;
           qrl_Referencia14.Caption  := '';
        //   qrl_CodB14.Caption        := '';
           qrl_Ref14.Caption         := '';
           qrlValor14.Caption        := '';

         end;
        ////////////////////////////////////////////


         if ckEtiqueta15.Checked Then begin

          // CriaCodigo(CodBarras,qriCod15.Canvas);
           qrl_Referencia15.Caption  := Referencia ;
         // qrl_CodB15.Caption        := CodBarras;
           qrlValor15.Caption        := ValorProd;

         end else begin

         //  qriCod15.Picture := nil;
           qrl_Referencia15.Caption  := '';
         //  qrl_CodB15.Caption        := '';
           qrl_Ref15.Caption         := '';
           qrlValor15.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta16.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod16.Canvas);
           qrl_Referencia16.Caption  := Referencia ;
          // qrl_CodB16.Caption        := CodBarras;
           qrlValor16.Caption        := ValorProd;

         end else begin

          // qriCod16.Picture := nil;
           qrl_Referencia16.Caption  := '';
          // qrl_CodB16.Caption        := '';
           qrl_Ref16.Caption         := '';
           qrlValor16.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta17.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod17.Canvas);
           qrl_Referencia17.Caption  := Referencia ;
          // qrl_CodB17.Caption        := CodBarras;
           qrlValor17.Caption        := ValorProd;

         end else begin

         //  qriCod17.Picture := nil;
           qrl_Referencia17.Caption  := '';
        //   qrl_CodB17.Caption        := '';
           qrl_Ref17.Caption         := '';
           qrlValor17.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta18.Checked Then begin

          // CriaCodigo(CodBarras,qriCod18.Canvas);
           qrl_Referencia18.Caption  := Referencia ;
        //   qrl_CodB18.Caption        := CodBarras;
           qrlValor18.Caption        := ValorProd;

         end else begin

         //  qriCod18.Picture := nil;
           qrl_Referencia18.Caption  := '';
         //  qrl_CodB18.Caption        := '';
           qrl_Ref18.Caption         := '';
           qrlValor18.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta19.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod19.Canvas);
           qrl_Referencia19.Caption  := Referencia ;
         //  qrl_CodB19.Caption        := CodBarras;
          qrlValor19.Caption        := ValorProd;

         end else begin

          // qriCod19.Picture := nil;
           qrl_Referencia19.Caption  := '';
         //  qrl_CodB19.Caption        := '';
           qrl_Ref19.Caption         := '';
           qrlValor19.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta20.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod20.Canvas);
           qrl_Referencia20.Caption  := Referencia ;
         //  qrl_CodB20.Caption        := CodBarras;
           qrlValor20.Caption        := ValorProd;

         end else begin

          // qriCod20.Picture := nil;
           qrl_Referencia20.Caption  := '';
        //   qrl_CodB20.Caption        := '';
           qrl_Ref20.Caption         := '';
           qrlValor20.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta21.Checked Then begin

          // CriaCodigo(CodBarras,qriCod21.Canvas);
           qrl_Referencia21.Caption  := Referencia ;
        //   qrl_CodB21.Caption        := CodBarras;
           qrlValor21.Caption        := ValorProd;

         end else begin

          // qriCod21.Picture := nil;
           qrl_Referencia21.Caption  := '';
         //  qrl_CodB21.Caption        := '';
           qrl_Ref21.Caption         := '';
           qrlValor21.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta22.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod22.Canvas);
           qrl_Referencia22.Caption  := Referencia ;
         //  qrl_CodB22.Caption        := CodBarras;
           qrlValor22.Caption        := ValorProd;

         end else begin

        //   qriCod22.Picture := nil;
           qrl_Referencia22.Caption  := '';
         //  qrl_CodB22.Caption        := '';
           qrl_Ref22.Caption         := '';
           qrlValor22.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta23.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod23.Canvas);
           qrl_Referencia23.Caption  := Referencia ;
         //  qrl_CodB23.Caption        := CodBarras;
           qrlValor23.Caption        := ValorProd;

         end else begin

          // qriCod23.Picture := nil;
           qrl_Referencia23.Caption  := '';
         //  qrl_CodB23.Caption        := '';
           qrl_Ref23.Caption         := '';
           qrlValor23.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta24.Checked Then begin

          // CriaCodigo(CodBarras,qriCod24.Canvas);
           qrl_Referencia24.Caption  := Referencia ;
          // qrl_CodB24.Caption        := CodBarras;
           qrlValor24.Caption        := ValorProd;

         end else begin

          // qriCod24.Picture := nil;
           qrl_Referencia24.Caption  := '';
          // qrl_CodB24.Caption        := '';
           qrl_Ref24.Caption         := '';
           qrlValor24.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta25.Checked Then begin

          // CriaCodigo(CodBarras,qriCod25.Canvas);
           qrl_Referencia25.Caption  := Referencia ;
         //  qrl_CodB25.Caption        := CodBarras;
           qrlValor25.Caption        := ValorProd;

         end else begin

          // qriCod25.Picture := nil;
           qrl_Referencia25.Caption  := '';
       //    qrl_CodB25.Caption        := '';
           qrl_Ref25.Caption         := '';
           qrlValor25.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta26.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod26.Canvas);
           qrl_Referencia26.Caption  := Referencia ;
         //  qrl_CodB26.Caption        := CodBarras;
           qrlValor26.Caption        := ValorProd;

         end else begin

         //  qriCod26.Picture := nil;
           qrl_Referencia26.Caption  := '';
          // qrl_CodB26.Caption        := '';
           qrl_Ref26.Caption         := '';
           qrlValor26.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta27.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod27.Canvas);
           qrl_Referencia27.Caption  := Referencia ;
          // qrl_CodB27.Caption        := CodBarras;
           qrlValor27.Caption        := ValorProd;

         end else begin

          // qriCod27.Picture := nil;
           qrl_Referencia27.Caption  := '';
         //  qrl_CodB27.Caption        := '';
           qrl_Ref27.Caption         := '';
           qrlValor27.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta28.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod28.Canvas);
           qrl_Referencia28.Caption  := Referencia ;
         //  qrl_CodB28.Caption        := CodBarras;
           qrlValor28.Caption        := ValorProd;

         end else begin

          // qriCod28.Picture := nil;
           qrl_Referencia28.Caption  := '';
          // qrl_CodB28.Caption        := '';
           qrl_Ref28.Caption         := '';
           qrlValor28.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta29.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod29.Canvas);
           qrl_Referencia29.Caption  := Referencia ;
          // qrl_CodB29.Caption        := CodBarras;
          qrlValor29.Caption        := ValorProd;

         end else begin

          // qriCod29.Picture := nil;
           qrl_Referencia29.Caption  := '';
         //  qrl_CodB29.Caption        := '';
           qrl_Ref29.Caption         := '';
           qrlValor29.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta30.Checked Then begin

        //   CriaCodigo(CodBarras,qriCod30.Canvas);
           qrl_Referencia30.Caption  := Referencia ;
        //   qrl_CodB30.Caption        := CodBarras;
           qrlValor30.Caption        := ValorProd;

         end else begin

         //  qriCod30.Picture := nil;
           qrl_Referencia30.Caption  := '';
          // qrl_CodB30.Caption        := '';
           qrl_Ref30.Caption         := '';
           qrlValor30.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta31.Checked Then begin

          // CriaCodigo(CodBarras,qriCod31.Canvas);
           qrl_Referencia31.Caption  := Referencia ;
         //  qrl_CodB31.Caption        := CodBarras;
           qrlValor31.Caption        := ValorProd;

         end else begin

          // qriCod31.Picture := nil;
           qrl_Referencia31.Caption  := '';
           //qrl_CodB31.Caption        := '';
           qrl_Ref31.Caption         := '';
           qrlValor31.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta32.Checked Then begin

          // CriaCodigo(CodBarras,qriCod32.Canvas);
           qrl_Referencia32.Caption  := Referencia ;
          // qrl_CodB32.Caption        := CodBarras;
           qrlValor32.Caption        := ValorProd;

         end else begin

         //  qriCod32.Picture := nil;
           qrl_Referencia32.Caption  := '';
          // qrl_CodB32.Caption        := '';
           qrl_Ref32.Caption         := '';
           qrlValor32.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta33.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod33.Canvas);
           qrl_Referencia33.Caption  := Referencia ;
         //  qrl_CodB33.Caption        := CodBarras;
           qrlValor33.Caption        := ValorProd;

         end else begin

          // qriCod33.Picture := nil;
           qrl_Referencia33.Caption  := '';
        //   qrl_CodB33.Caption        := '';
           qrl_Ref33.Caption         := '';
           qrlValor33.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta34.Checked Then begin

          // CriaCodigo(CodBarras,qriCod34.Canvas);
           qrl_Referencia34.Caption  := Referencia ;
         //  qrl_CodB34.Caption        := CodBarras;
           qrlValor34.Caption        := ValorProd;

         end else begin

          // qriCod34.Picture := nil;
           qrl_Referencia34.Caption  := '';
         //  qrl_CodB34.Caption        := '';
           qrl_Ref34.Caption         := '';
           qrlValor34.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta35.Checked Then begin

          // CriaCodigo(CodBarras,qriCod35.Canvas);
           qrl_Referencia35.Caption  := Referencia ;
          // qrl_CodB35.Caption        := CodBarras;
           qrlValor35.Caption        := ValorProd;

         end else begin

           //qriCod35.Picture := nil;
           qrl_Referencia35.Caption  := '';
         //  qrl_CodB35.Caption        := '';
           qrl_Ref35.Caption         := '';
           qrlValor35.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta36.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod36.Canvas);
           qrl_Referencia36.Caption  := Referencia ;
          // qrl_CodB36.Caption        := CodBarras;
           qrlValor36.Caption        := ValorProd;

         end else begin

          // qriCod36.Picture := nil;
           qrl_Referencia36.Caption  := '';
          // qrl_CodB36.Caption        := '';
           qrl_Ref36.Caption         := '';
           qrlValor36.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta37.Checked Then begin

          // CriaCodigo(CodBarras,qriCod37.Canvas);
           qrl_Referencia37.Caption  := Referencia ;
          // qrl_CodB37.Caption        := CodBarras;
           qrlValor37.Caption        := ValorProd;

         end else begin

         // qriCod37.Picture := nil;
           qrl_Referencia37.Caption  := '';
         // qrl_CodB37.Caption        := '';
          qrl_Ref37.Caption         := '';
          qrlValor37.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta38.Checked Then begin

         // CriaCodigo(CodBarras,qriCod38.Canvas);
           qrl_Referencia38.Caption  := Referencia ;
         //  qrl_CodB38.Caption        := CodBarras;
           qrlValor38.Caption        := ValorProd;

         end else begin

         // qriCod38.Picture := nil;
           qrl_Referencia38.Caption  := '';
         //  qrl_CodB38.Caption        := '';
           qrl_Ref38.Caption         := '';
           qrlValor38.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta39.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod39.Canvas);
           qrl_Referencia39.Caption  := Referencia ;
          // qrl_CodB39.Caption        := CodBarras;
           qrlValor39.Caption        := ValorProd;

         end else begin

         //  qriCod39.Picture := nil;
           qrl_Referencia39.Caption  := '';
          // qrl_CodB39.Caption        := '';
           qrl_Ref39.Caption         := '';
           qrlValor39.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta40.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod40.Canvas);
           qrl_Referencia40.Caption  := Referencia ;
         //  qrl_CodB40.Caption        := CodBarras;
           qrlValor40.Caption        := ValorProd;

         end else begin

         //  qriCod40.Picture := nil;
           qrl_Referencia40.Caption  := '';
         //  qrl_CodB40.Caption        := '';
           qrl_Ref40.Caption         := '';
           qrlValor40.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta41.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod41.Canvas);
           qrl_Referencia41.Caption  := Referencia ;
         //  qrl_CodB41.Caption        := CodBarras;
           qrlValor41.Caption        := ValorProd;

         end else begin

         //  qriCod41.Picture := nil;
           qrl_Referencia41.Caption  := '';
        //   qrl_CodB41.Caption        := '';
           qrl_Ref41.Caption         := '';
           qrlValor41.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta42.Checked Then begin

          // CriaCodigo(CodBarras,qriCod42.Canvas);
           qrl_Referencia42.Caption  := Referencia ;
         //  qrl_CodB42.Caption        := CodBarras;
           qrlValor42.Caption        := ValorProd;

         end else begin

          // qriCod42.Picture := nil;
           qrl_Referencia42.Caption  := '';
          // qrl_CodB42.Caption        := '';
           qrl_Ref42.Caption         := '';
           qrlValor42.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta43.Checked Then begin

          // CriaCodigo(CodBarras,qriCod43.Canvas);
           qrl_Referencia43.Caption  := Referencia ;
         //  qrl_CodB43.Caption        := CodBarras;
           qrlValor43.Caption        := ValorProd;

         end else begin

         //  qriCod43.Picture := nil;
           qrl_Referencia43.Caption  := '';
         //  qrl_CodB43.Caption        := '';
           qrl_Ref43.Caption         := '';
           qrlValor43.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta44.Checked Then begin

          // CriaCodigo(CodBarras,qriCod44.Canvas);
           qrl_Referencia44.Caption  := Referencia ;
        //   qrl_CodB44.Caption        := CodBarras;
           qrlValor44.Caption        := ValorProd;

         end else begin

         //  qriCod44.Picture := nil;
           qrl_Referencia44.Caption  := '';
         //  qrl_CodB44.Caption        := '';
           qrl_Ref44.Caption         := '';
           qrlValor44.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta45.Checked Then begin

          // CriaCodigo(CodBarras,qriCod45.Canvas);
           qrl_Referencia45.Caption  := Referencia ;
         //  qrl_CodB45.Caption        := CodBarras;
           qrlValor45.Caption        := ValorProd;

         end else begin

         //  qriCod45.Picture := nil;
           qrl_Referencia45.Caption  := '';
         //  qrl_CodB45.Caption        := '';
          qrl_Ref45.Caption         := '';
          qrlValor45.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta46.Checked Then begin

          // CriaCodigo(CodBarras,qriCod46.Canvas);
           qrl_Referencia46.Caption  := Referencia ;
         //  qrl_CodB46.Caption        := CodBarras;
           qrlValor46.Caption        := ValorProd;

         end else begin

         //  qriCod46.Picture := nil;
           qrl_Referencia46.Caption  := '';
          // qrl_CodB46.Caption        := '';
           qrl_Ref46.Caption         := '';
           qrlValor46.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta47.Checked Then begin

         // CriaCodigo(CodBarras,qriCod47.Canvas);
           qrl_Referencia47.Caption  := Referencia ;
         //  qrl_CodB47.Caption        := CodBarras;
           qrlValor47.Caption        := ValorProd;

         end else begin

         //  qriCod47.Picture := nil;
           qrl_Referencia47.Caption  := '';
          // qrl_CodB47.Caption        := '';
           qrl_Ref47.Caption         := '';
           qrlValor47.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta48.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod48.Canvas);
           qrl_Referencia48.Caption  := Referencia ;
         //  qrl_CodB48.Caption        := CodBarras;
           qrlValor48.Caption        := ValorProd;

         end else begin

          // qriCod48.Picture := nil;
           qrl_Referencia48.Caption  := '';
        //   qrl_CodB48.Caption        := '';
           qrl_Ref48.Caption         := '';
           qrlValor48.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta49.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod49.Canvas);
           qrl_Referencia49.Caption  := Referencia ;
         //  qrl_CodB49.Caption        := CodBarras;
           qrlValor49.Caption        := ValorProd;

         end else begin

        //   qriCod49.Picture := nil;
           qrl_Referencia49.Caption  := '';
         //  qrl_CodB49.Caption        := '';
           qrl_Ref49.Caption         := '';
           qrlValor49.Caption        := ValorProd;

         end;
        ////////////////////////////////////////////

         if ckEtiqueta50.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod50.Canvas);
           qrl_Referencia50.Caption  := Referencia ;
          // qrl_CodB50.Caption        := CodBarras;
           qrlValor50.Caption        := ValorProd;

         end else begin

         //  qriCod50.Picture := nil;
           qrl_Referencia50.Caption  := '';
          // qrl_CodB50.Caption        := '';
           qrl_Ref50.Caption         := '';
           qrlValor50.Caption        := ValorProd;

         end;
        ////////////////////////////////////////////

         if ckEtiqueta51.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod51.Canvas);
           qrl_Referencia51.Caption  := Referencia ;
         //  qrl_CodB51.Caption        := CodBarras;
           qrlValor51.Caption        := ValorProd;

         end else begin

           //qriCod51.Picture := nil;
           qrl_Referencia51.Caption  := '';
          // qrl_CodB51.Caption        := '';
           qrl_Ref51.Caption         := '';
           qrlValor51.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta52.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod52.Canvas);
           qrl_Referencia52.Caption  := Referencia ;
         //  qrl_CodB52.Caption        := CodBarras;
           qrlValor52.Caption        := ValorProd;

         end else begin

          // qriCod52.Picture := nil;
           qrl_Referencia52.Caption  := '';
         //  qrl_CodB52.Caption        := '';
           qrl_Ref52.Caption         := '';
           qrlValor52.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta53.Checked Then begin

          // CriaCodigo(CodBarras,qriCod53.Canvas);
           qrl_Referencia53.Caption  := Referencia ;
         //  qrl_CodB53.Caption        := CodBarras;
           qrlValor53.Caption        := ValorProd;

         end else begin

         //  qriCod53.Picture := nil;
           qrl_Referencia53.Caption  := '';
          // qrl_CodB53.Caption        := '';
           qrl_Ref53.Caption         := '';
           qrlValor53.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta54.Checked Then begin

          // CriaCodigo(CodBarras,qriCod54.Canvas);
           qrl_Referencia54.Caption  := Referencia ;
         //  qrl_CodB54.Caption        := CodBarras;
           qrlValor54.Caption        := ValorProd;

         end else begin

          // qriCod54.Picture := nil;
           qrl_Referencia54.Caption  := '';
          // qrl_CodB54.Caption        := '';
           qrl_Ref54.Caption         := '';
           qrlValor54.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta55.Checked Then begin

          // CriaCodigo(CodBarras,qriCod55.Canvas);
           qrl_Referencia55.Caption  := Referencia ;
          // qrl_CodB55.Caption        := CodBarras;
           qrlValor55.Caption        := ValorProd;

         end else begin

          // qriCod55.Picture := nil;
           qrl_Referencia55.Caption  := '';
         //  qrl_CodB55.Caption        := '';
           qrl_Ref55.Caption         := '';
           qrlValor55.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta56.Checked Then begin

          // CriaCodigo(CodBarras,qriCod56.Canvas);
           qrl_Referencia56.Caption  := Referencia ;
         //  qrl_CodB56.Caption        := CodBarras;
           qrlValor56.Caption        := ValorProd;

         end else begin

           //qriCod56.Picture := nil;
           qrl_Referencia56.Caption  := '';
         //  qrl_CodB56.Caption        := '';
           qrl_Ref56.Caption         := '';
           qrlValor56.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta57.Checked Then begin

          // CriaCodigo(CodBarras,qriCod57.Canvas);
           qrl_Referencia57.Caption  := Referencia ;
         //  qrl_CodB57.Caption        := CodBarras;
           qrlValor57.Caption        := ValorProd;

         end else begin

          // qriCod57.Picture := nil;
           qrl_Referencia57.Caption  := '';
         //  qrl_CodB57.Caption        := '';
           qrl_Ref57.Caption         := '';
           qrlValor57.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta58.Checked Then begin

          // CriaCodigo(CodBarras,qriCod58.Canvas);
           qrl_Referencia58.Caption  := Referencia ;
         //  qrl_CodB58.Caption        := CodBarras;
           qrlValor58.Caption        := ValorProd;

         end else begin

         //  qriCod58.Picture := nil;
           qrl_Referencia58.Caption  := '';
         //  qrl_CodB58.Caption        := '';
           qrl_Ref58.Caption         := '';
           qrlValor58.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta59.Checked Then begin

          // CriaCodigo(CodBarras,qriCod59.Canvas);
           qrl_Referencia59.Caption  := Referencia ;
          // qrl_CodB59.Caption        := CodBarras;
           qrlValor59.Caption        := ValorProd;

         end else begin

          // qriCod59.Picture := nil;
           qrl_Referencia59.Caption  := '';
          // qrl_CodB59.Caption        := '';
           qrl_Ref59.Caption         := '';
           qrlValor59.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta60.Checked Then begin

          // CriaCodigo(CodBarras,qriCod60.Canvas);
           qrl_Referencia60.Caption  := Referencia ;
          // qrl_CodB60.Caption        := CodBarras;
           qrlValor60.Caption        := ValorProd;

         end else begin

         //  qriCod60.Picture := nil;
           qrl_Referencia60.Caption  := '';
         //  qrl_CodB60.Caption        := '';
           qrl_Ref60.Caption         := '';
           qrlValor60.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta61.Checked Then begin

          // CriaCodigo(CodBarras,qriCod61.Canvas);
           qrl_Referencia61.Caption  := Referencia ;
          // qrl_CodB61.Caption        := CodBarras;
           qrlValor61.Caption        := ValorProd;

         end else begin

          // qriCod61.Picture := nil;
           qrl_Referencia61.Caption  := '';
          // qrl_CodB61.Caption        := '';
           qrl_Ref61.Caption         := '';
           qrlValor61.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta62.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod62.Canvas);
           qrl_Referencia62.Caption  := Referencia ;
         //  qrl_CodB62.Caption        := CodBarras;
           qrlValor62.Caption        := ValorProd;

         end else begin

          // qriCod62.Picture := nil;
           qrl_Referencia62.Caption  := '';
          // qrl_CodB62.Caption        := '';
           qrl_Ref62.Caption         := '';
           qrlValor62.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta63.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod63.Canvas);
           qrl_Referencia63.Caption  := Referencia ;
         //  qrl_CodB63.Caption        := CodBarras;
           qrlValor63.Caption        := ValorProd;

         end else begin

         //  qriCod63.Picture := nil;
           qrl_Referencia63.Caption  := '';
        //  qrl_CodB63.Caption        := '';
           qrl_Ref63.Caption         := '';
           qrlValor63.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta64.Checked Then begin

          // CriaCodigo(CodBarras,qriCod64.Canvas);
           qrl_Referencia64.Caption  := Referencia ;
          // qrl_CodB64.Caption        := CodBarras;
           qrlValor64.Caption        := ValorProd;

         end else begin

          // qriCod64.Picture := nil;
           qrl_Referencia64.Caption  := '';
         //  qrl_CodB64.Caption        := '';
           qrl_Ref64.Caption         := '';
           qrlValor64.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta65.Checked Then begin

          // CriaCodigo(CodBarras,qriCod65.Canvas);
           qrl_Referencia65.Caption  := Referencia ;
        //   qrl_CodB65.Caption        := CodBarras;
           qrlValor65.Caption        := ValorProd;

         end else begin

          // qriCod65.Picture := nil;
           qrl_Referencia65.Caption  := '';
          // qrl_CodB65.Caption        := '';
           qrl_Ref65.Caption         := '';
           qrlValor65.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta67.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod67.Canvas);
           qrl_Referencia67.Caption  := Referencia ;
         //  qrl_CodB67.Caption        := CodBarras;
          qrlValor67.Caption        := ValorProd;

         end else begin

         //  qriCod67.Picture := nil;
           qrl_Referencia67.Caption  := '';
          // qrl_CodB67.Caption        := '';
           qrl_Ref67.Caption         := '';
           qrlValor67.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta68.Checked Then begin

          // CriaCodigo(CodBarras,qriCod68.Canvas);
           qrl_Referencia68.Caption  := Referencia ;
          // qrl_CodB68.Caption        := CodBarras;
           qrlValor68.Caption        := ValorProd;

         end else begin

         //  qriCod68.Picture := nil;
           qrl_Referencia68.Caption  := '';
          // qrl_CodB68.Caption        := '';
           qrl_Ref68.Caption         := '';
           qrlValor68.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta69.Checked Then begin

          //CriaCodigo(CodBarras,qriCod69.Canvas);
           qrl_Referencia69.Caption  := Referencia ;
          //qrl_CodB69.Caption        := CodBarras;
           qrlValor69.Caption        := ValorProd;

         end else begin

          // qriCod69.Picture := nil;
           qrl_Referencia69.Caption  := '';
         //  qrl_CodB69.Caption        := '';
           qrl_Ref69.Caption         := '';
           qrlValor69.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta70.Checked Then begin

          // CriaCodigo(CodBarras,qriCod70.Canvas);
           qrl_Referencia70.Caption  := Referencia ;
          // qrl_CodB70.Caption        := CodBarras;
           qrlValor70.Caption        := ValorProd;

         end else begin

          // qriCod70.Picture := nil;
           qrl_Referencia70.Caption  := '';
          // qrl_CodB70.Caption        := '';
           qrl_Ref70.Caption         := '';
           qrlValor70.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta71.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod71.Canvas);
           qrl_Referencia71.Caption  := Referencia ;
        //   qrl_CodB71.Caption        := CodBarras;
           qrlValor71.Caption        := ValorProd;

         end else begin

         //  qriCod71.Picture := nil;
           qrl_Referencia71.Caption  := '';
         //  qrl_CodB71.Caption        := '';
          qrl_Ref71.Caption         := '';
          qrlValor71.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta72.Checked Then begin

          // CriaCodigo(CodBarras,qriCod72.Canvas);
           qrl_Referencia72.Caption  := Referencia ;
        //   qrl_CodB72.Caption        := CodBarras;
           qrlValor72.Caption        := ValorProd;

         end else begin

          // qriCod72.Picture := nil;
           qrl_Referencia72.Caption  := '';
         // qrl_CodB72.Caption        := '';
           qrl_Ref72.Caption         := '';
           qrlValor72.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta73.Checked Then begin

          // CriaCodigo(CodBarras,qriCod73.Canvas);
           qrl_Referencia73.Caption  := Referencia ;
           //qrl_CodB73.Caption        := CodBarras;
           qrlValor73.Caption        := ValorProd;

         end else begin

          // qriCod73.Picture := nil;
           qrl_Referencia73.Caption  := '';
         //  qrl_CodB73.Caption        := '';
           qrl_Ref73.Caption         := '';
           qrlValor73.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta74.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod74.Canvas);
           qrl_Referencia74.Caption  := Referencia ;
          // qrl_CodB74.Caption        := CodBarras;
           qrlValor74.Caption        := ValorProd;

         end else begin

          // qriCod74.Picture := nil;
           qrl_Referencia74.Caption  := '';
          // qrl_CodB74.Caption        := '';
           qrl_Ref74.Caption         := '';
           qrlValor74.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta75.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod75.Canvas);
           qrl_Referencia75.Caption  := Referencia ;
        //   qrl_CodB75.Caption        := CodBarras;
           qrlValor75.Caption        := ValorProd;

         end else begin

          // qriCod75.Picture := nil;
           qrl_Referencia75.Caption  := '';
          // qrl_CodB75.Caption        := '';
           qrl_Ref75.Caption         := '';
           qrlValor75.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta76.Checked Then begin

          // CriaCodigo(CodBarras,qriCod76.Canvas);
           qrl_Referencia76.Caption  := Referencia ;
         //  qrl_CodB76.Caption        := CodBarras;
           qrlValor76.Caption        := ValorProd;

         end else begin

          // qriCod76.Picture := nil;
           qrl_Referencia76.Caption  := '';
          // qrl_CodB76.Caption        := '';
           qrl_Ref76.Caption         := '';
           qrlValor76.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta77.Checked Then begin

          // CriaCodigo(CodBarras,qriCod77.Canvas);
           qrl_Referencia77.Caption  := Referencia ;
          // qrl_CodB77.Caption        := CodBarras;
           qrlValor77.Caption        := ValorProd;

         end else begin

          // qriCod77.Picture := nil;
           qrl_Referencia77.Caption  := '';
         //  qrl_CodB77.Caption        := '';
           qrl_Ref77.Caption         := '';
           qrlValor77.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta78.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod78.Canvas);
           qrl_Referencia78.Caption  := Referencia ;
         //  qrl_CodB78.Caption        := CodBarras;
           qrlValor78.Caption        := ValorProd;

         end else begin

         //  qriCod78.Picture := nil;
           qrl_Referencia78.Caption  := '';
         //  qrl_CodB78.Caption        := '';
           qrl_Ref78.Caption         := '';
           qrlValor78.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta79.Checked Then begin

          // CriaCodigo(CodBarras,qriCod79.Canvas);
           qrl_Referencia79.Caption  := Referencia ;
        //   qrl_CodB79.Caption        := CodBarras;
           qrlValor79.Caption        := ValorProd;

         end else begin

           //qriCod79.Picture := nil;
           qrl_Referencia79.Caption  := '';
          // qrl_CodB79.Caption        := '';
           qrl_Ref79.Caption         := '';
           qrlValor79.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta80.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod80.Canvas);
           qrl_Referencia80.Caption  := Referencia ;
        //   qrl_CodB80.Caption        := CodBarras;
           qrlValor80.Caption        := ValorProd;

         end else begin

         //  qriCod80.Picture := nil;
           qrl_Referencia80.Caption  := '';
           //qrl_CodB80.Caption        := '';
           qrl_Ref80.Caption         := '';
           qrlValor80.Caption        := '';

         end;
        ////////////////////////////////////////////

         if ckEtiqueta81.Checked Then begin

         //  CriaCodigo(CodBarras,qriCod81.Canvas);
           qrl_Referencia81.Caption  := Referencia ;
         //  qrl_CodB81.Caption        := CodBarras;
           qrlValor81.Caption        := ValorProd;

         end else begin

           //qriCod81.Picture := nil;
           qrl_Referencia81.Caption  := '';
         // qrl_CodB81.Caption        := '';
           qrl_Ref81.Caption         := '';
           qrlValor81.Caption        := '';

         end;   
        ////////////////////////////////////////////


        end;{if}

         // qrp6087Ref.Preview;

      end; //if


  {  EXCEPT
      on E : Exception do begin
         frmEtiquetas6087Ref.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formul�rio: ' + E.Message,mtError,[mbOk],0);
      end;
    END;  }

  // end;{if}

 // end;//if ckimprimirref


 // end;{with}


//end;

procedure TfrmPimaco6087.ckMarcarTodosCheck(Sender: TObject);
begin
MarcaTodos;
end;

procedure TfrmPimaco6087.ckMarcar11a20Check(Sender: TObject);
begin
Marcar11a20;
end;

procedure TfrmPimaco6087.ckMarcar21a30Check(Sender: TObject);
begin
Marcar21a30;
end;

procedure TfrmPimaco6087.ckMarcar31a40Check(Sender: TObject);
begin
Marcar31a40
end;

procedure TfrmPimaco6087.ckMarcar41a50Check(Sender: TObject);
begin
Marcar41a50;
end;

procedure TfrmPimaco6087.ckMarcar51a60Check(Sender: TObject);
begin
Marcar51a60;
end;

procedure TfrmPimaco6087.ckMarcar61a70Check(Sender: TObject);
begin
Marcar61a70;
end;

procedure TfrmPimaco6087.ckMarcar71a80Check(Sender: TObject);
begin
Marcar71a80;
end;

procedure TfrmPimaco6087.FormShow(Sender: TObject);
begin
LimparBotoes;
end;

procedure TfrmPimaco6087.ckMarcar1a10Click(Sender: TObject);
begin
Marcar1a10;
end;

procedure TfrmPimaco6087.ckMarcarTodosClick(Sender: TObject);
begin
MarcaTodos;
end;

end.
