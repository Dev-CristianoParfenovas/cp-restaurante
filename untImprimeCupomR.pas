unit untImprimeCupomR;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons, IBQuery, Vcl.Imaging.GIFImg;

type
  TfrmImprimeCupomR = class(TForm)
    lbl_edtQtdePessoas: TLabeledEdit;
    lbl_edtPorcentagemGarcom: TLabeledEdit;
    btnSair: TBitBtn;
    lbl_M: TLabel;
    lbl_T: TLabel;
    lbl_Mesas: TLabel;
    lbl_TotalMesas: TLabel;
    lbl_F1: TLabel;
    Image1: TImage;
    Label1: TLabel;
    lbl_TotalDividido: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure Commit(IBQueryExec : TIBQuery);
    procedure FormShow(Sender: TObject);
    procedure lbl_edtQtdePessoasKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  function iImprimirTexto_DUAL_DarumaFramework(pszString: String; iTam: Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
  
var
  frmImprimeCupomR: TfrmImprimeCupomR;
  PathSistema : String;
  iRetorno : Integer;

implementation

uses untModuloRestaurante, untdmModule, funcPosto,DB;
 { Daruma_Framework_Exemplo_Dual_01, Daruma_Framework_Exemplo_DUAL_02,
  Daruma_Framework_Impressora_Dual,
  Daruma_Framework_Looping_Verificacao_Status,
  Daruma_Framework_Looping_Verificacao_Status_Doc,
  Daruma_Framework_Variaveis_Globais, Daruma_Framework_DUAL_ImprimirTexto;
Function Daruma_DUAL_ImprimirTexto( TextoLivre: String; TamanhoTexto: Integer ): Integer; StdCall; External 'Daruma32.dll'  }


{$R *.dfm}

procedure TfrmImprimeCupomR.FormCreate(Sender: TObject);
begin

  PathSistema := ExtractFilePath(ParamStr(0));
  
  if FileExists(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp') Then
    btnSair.Glyph.LoadFromFile(PathSistema + 'Data\RunTime\Imagens_Sistema\sair.bmp');

end;

procedure TfrmImprimeCupomR.Commit(IBQueryExec : TIBQuery);

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

procedure TfrmImprimeCupomR.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmImprimeCupomR.FormShow(Sender: TObject);
begin

  if frmRestaurante.Showing Then begin

    lbl_Mesas.Caption      := frmRestaurante.lbl_edtNMesa.Text;
    lbl_TotalMesas.Caption := frmRestaurante.lbl_ValorTotal.Caption;
    lbl_TotalDividido.Caption := '';

  end;//if

end;

procedure TfrmImprimeCupomR.lbl_edtQtdePessoasKeyPress(Sender: TObject;
  var Key: Char);

var
Valor1,Valor2,Valor3 : Real;
  
begin

  if key=#13 Then begin

    lbl_edtPorcentagemGarcom.SetFocus;

      if lbl_TotalMesas.Caption <> '' Then begin //se for em branco executa rotina abaixo.

        if (Pos(',',lbl_TotalMesas.Caption)>0) and (lbl_TotalMesas.Caption > '0,00') Then begin

          Valor1 := StrToFloat(StringReplace(lbl_TotalMesas.Caption,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));
          Valor2 := StrToFloat(StringReplace(lbl_edtQtdePessoas.Text,FormatSettings.ThousandSeparator,'',[rfReplaceAll]));

          Valor3 := Valor1/Valor2;
          lbl_TotalDividido.Caption := FormatFloat(',0.00',(Valor3));

        end;

      end;


  end;

end;

procedure TfrmImprimeCupomR.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);

  var

   Lpt1,Com1, AvisaCupomPed,ImprimirDiretoPed, DesenhodeDivisaoPed : String;
   FrasePed, FraseRodapePed : String;
   F : TextFile;
   QtdedeSaltosPed, DataConvertida, Hora : String;

   //VARIAVEIS PARA DADOS DA EMPRESA

   NomeEmpresa,TelefoneEmpresa,EnderecoEmpresa,NumeroEndEmpresa : String;
   BairroEmpresa : String;

   ConfirmaCupomPed, IDClassPedido : Integer;

   VlrTotal,QtdeDivid,TotalDividido : Real;
   VlrPagtoDivid,QtdeDividido,CaminhoImpressora,ObsCupom : String;

begin

  with dmModule do begin

    case key of

      VK_F1:begin

//////////////////////////**ROTINA PARA IMPRIMIR**//////////////////////////////

        if frmRestaurante.Showing Then begin

            Commit(ibConfig);
            ibConfig.Close;
            ibConfig.SQL.Clear;
            ibConfig.SQL.Add('SELECT * FROM TBLCONFIGURACOES');
            ibConfig.Open;

            AvisaCupomPed       := ibConfig.FieldByName('IMPRIMIRCUPOM').AsString;
            ImprimirDiretoPed   := ibConfig.FieldByName('IMPRIMIRDIRETO').AsString;
            QtdedeSaltosPed     := IntToStr(ibConfig.FieldByName('QTDESALTOS').AsInteger);
            DesenhodeDivisaoPed := ibConfig.FieldByName('DESENHODIVISAO').AsString;
            FrasePed            := ibConfig.FieldByName('FRASE').AsString;
            FraseRodapePed      := ibConfig.FieldByName('FRASERODAPE').AsString;
            Lpt1                := ibConfig.FieldByName('LPT1').AsString;
            Com1                := ibConfig.FieldByName('COM1').AsString;
            
              if ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString <> '' Then begin

                CaminhoImpressora := ibConfig.FieldByName('CAMINHOIMPRESSORA').AsString;

              end;

          if AvisaCupomPed = 'Sim' Then begin

            ConfirmaCupomPed := Application.MessageBox('Deseja imprimir?','Notificação:Impressão de Cupom',+MB_YESNO+MB_ICONQUESTION);

          if ImprimirDiretoPed= 'Sim' Then begin

            if ConfirmaCupomPed = 6 Then begin

              DataConvertida := FormatDateTime('DD/MM/YYYY',Now);
              Hora           := FormatDateTime('hh:mm:ss',Now);

////////////////////////////////////////////////////////////////////////////////

              Commit(ibRestaurante);
              ibRestaurante.Close;
              ibRestaurante.SQL.Clear;
              ibRestaurante.SQL.Add('SELECT TBLRESTAURANTE.*,'
              + 'CADPRODUTOS.NOME As Produto,CADPRODUTOS.CODBARRAS FROM TBLRESTAURANTE '
              + 'INNER JOIN CADPRODUTOS ON TBLRESTAURANTE.IDPRODUTO=CADPRODUTOS.IDPROD WHERE TBLRESTAURANTE.IDDETALHER=''' + (frmRestaurante.lbl_edtIDDetalheMesa.Caption) + '''');
              ibRestaurante.Open;

             (ibRestaurante.FieldByName('VLRUNIT') as TFloatField).DisplayFormat := ',0.00';
             (ibRestaurante.FieldByName('VLRTOTAL') as TFloatField).DisplayFormat := ',0.00';
             (ibRestaurante.FieldByName('QTDE') as TFloatField).DisplayFormat := '0';

////////////////////////////////////////////////////////////////////////////////

            if (frmRestaurante.lbl_IDCli.Caption <> '')and (frmRestaurante.lbl_Cliente.Caption <> '')Then begin


              ibClassificacao.Close;
              ibClassificacao.SQL.Clear;
              ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
              ibClassificacao.Open;
              IDClassPedido := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO FORNECEDOR NA VARIAVEL.


              Commit(ibTempCadastro);
              ibTempCadastro.Close;
              ibTempCadastro.SQL.Clear;
              ibTempCadastro.SQL.Add('SELECT TBLCADASTRO.*,TBLLOGRADOURO.BAIRRO,'
              + 'TBLLOGRADOURO.ENDERECO FROM TBLCADASTRO '
              + 'LEFT OUTER JOIN TBLLOGRADOURO ON TBLCADASTRO.IDCAD = TBLLOGRADOURO.IDCAD '
              + 'WHERE TBLCADASTRO.IDCLASS=''' + InttoStr(IDClassPedido) + '''and TBLCADASTRO.IDCAD=''' + frmRestaurante.lbl_IDCli.Caption + '''');
              ibTempCadastro.Open;

           end;

           ibDadosEmpresa.Close;
           ibDadosEmpresa.SQL.Clear;
           ibDadosEmpresa.SQL.Add('SELECT * FROM TBLDADOSEMPRESA');
           ibDadosEmpresa.Open;

           if ibDadosEmpresa.RecordCount > 0 Then begin

             NomeEmpresa := ibDadosEmpresa.FieldByName('NOME').AsString;
             EnderecoEmpresa := ibDadosEmpresa.FieldByName('ENDERECO').AsString;
             NumeroEndEmpresa := ibDadosEmpresa.FieldByName('NUMERO').AsString;
             TelefoneEmpresa := ibDadosEmpresa.FieldByName('TELEFONE').AsString;
             BairroEmpresa := ibDadosEmpresa.FieldByName('BAIRRO').AsString;

           end;//if

////////////////////////////////////////////////////////////////////////////////

              if lbl_edtQtdePessoas.Text = '' Then begin
              
                if Lpt1 = 'Sim' Then begin

                // AssignFile(F,CaminhoImpressora);//
                // Rewrite(F);

                  //Writeln(F,((NomeEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(NomeEmpresa),0);
                //  Writeln(F,((EnderecoEmpresa + ','+ NumeroEndEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(EnderecoEmpresa + ','+ NumeroEndEmpresa),0);
                  //Writeln(F,((BairroEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(BairroEmpresa),0);
                  //Writeln(F,((TelefoneEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(TelefoneEmpresa),0);
                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                  //Writeln(F,('Data:'+DataConvertida+ ' Hora:'+Hora+''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Data:'+DataConvertida+ ' Hora:'+Hora+''),0);
                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.listboxCupom.Items).Text+ ''),0);
                  if ibTempCadastro.recordcount > 0 Then begin

                  //Writeln(F,('Cliente:'+(ibTempCadastro.FieldByName('NOME').AsString)));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Cliente:'+(ibTempCadastro.FieldByName('NOME').AsString)),0);
                  if ibTempCadastro.FieldByName('TELEFONE').AsString <> '' then begin
                  //Writeln(F,('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString),0);
                  end;
                  if ibTempCadastro.FieldByName('CELULAR').AsString <> '' Then begin
                  //Writeln(F,('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString),0);
                  end;
                  //Writeln(F,('Endereço: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Endereço: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString),0);
                  if ibTempCadastro.FieldByName('COMPL').AsString <> '' Then begin
                  //Writeln(F,('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString),0);
                  end;
                 // Writeln(F,('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString),0);
                  if ibTempCadastro.FieldByName('BAIRRO').AsString <> '' Then begin
                 // Writeln(F,('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'),0);
                  end;
                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                  end;

                  while not ibRestaurante.Eof do begin

                    //Writeln(F,(ibRestaurante.FieldByName('Produto').AsString));
                    iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(ibRestaurante.FieldByName('Produto').AsString),0);
                    if ibRestaurante.FieldByName('OBS').AsString <> '' Then begin
                    //Writeln(F,('-->> '+ibRestaurante.FieldByName('OBS').AsString),0);
                    iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('-->> '+ibRestaurante.FieldByName('OBS').AsString),0);
                    end;
                    //Writeln(F,(FormatFloat('0',ibRestaurante.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat)));
                    iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(FormatFloat('0',ibRestaurante.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat)),0);
                    //+''+'X'+''+(FormatFloat(CasasDecimais('Produtos'),FloatToStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat)))+''+'='+''+(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat))
                    ibRestaurante.Next;

                  end;//while

                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                //  Writeln(F,('TOTAL: '+ lbl_TotalMesas.Caption+'</b>'));

                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);


                 //CloseFile(F);

                //end;//if confirmacupom

              end;//if lpt1=sim

            end;//if lblqtdepessoas = ''

//****************************************************************************//

              if lbl_edtQtdePessoas.Text > '0' Then begin
              
                if Lpt1 = 'Sim' Then begin

                // AssignFile(F,CaminhoImpressora);
                // Rewrite(F);

                  //Writeln(F,((NomeEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(NomeEmpresa),0);
                //  Writeln(F,((EnderecoEmpresa + ','+ NumeroEndEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(EnderecoEmpresa + ','+ NumeroEndEmpresa),0);
                  //Writeln(F,((BairroEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(BairroEmpresa),0);
                  //Writeln(F,((TelefoneEmpresa)+ ''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(TelefoneEmpresa),0);
                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                  //Writeln(F,('Data:'+DataConvertida+ ' Hora:'+Hora+''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Data:'+DataConvertida+ ' Hora:'+Hora+''),0);
                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                  //Int_Retorno:= Daruma_DUAL_ImprimirTexto(pchar('<sp>1</sp>'+(frmCliente.listboxCupom.Items).Text+ ''),0);
                  if ibTempCadastro.recordcount > 0 Then begin

                  //Writeln(F,('Cliente:'+(ibTempCadastro.FieldByName('NOME').AsString)));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Cliente:'+(ibTempCadastro.FieldByName('NOME').AsString)),0);
                  if ibTempCadastro.FieldByName('TELEFONE').AsString <> '' then begin
                  //Writeln(F,('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Telefone: '+ibTempCadastro.FieldByName('TELEFONE').AsString),0);
                  end;
                  if ibTempCadastro.FieldByName('CELULAR').AsString <> '' Then begin
                  //Writeln(F,('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Celular : '+ibTempCadastro.FieldByName('CELULAR').AsString),0);
                  end;
                  //Writeln(F,('Endereço: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Endereço: '+ibTempCadastro.FieldByName('ENDERECO').AsString)+'  ,'+(ibTempCadastro.FieldByName('NUMERO').AsString),0);
                  if ibTempCadastro.FieldByName('COMPL').AsString <> '' Then begin
                  //Writeln(F,('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Compl.: '+ibTempCadastro.FieldByName('COMPL').AsString),0);
                  end;
                 // Writeln(F,('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('Bairro: '+ibTempCadastro.FieldByName('BAIRRO').AsString),0);
                  if ibTempCadastro.FieldByName('BAIRRO').AsString <> '' Then begin
                 // Writeln(F,('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('** '+ibTempCadastro.FieldByName('BAIRRO').AsString+' **'),0);
                  end;
                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);
                  end;



                 { while not ibRestaurante.Eof do begin

                    Writeln(F,(ibRestaurante.FieldByName('Produto').AsString));
                    if ibRestaurante.FieldByName('OBS').AsString <> '' Then begin
                    Writeln(F,('-->> '+ibRestaurante.FieldByName('OBS').AsString),0);
                    end;
                    Writeln(F,(FormatFloat('0',ibRestaurante.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat)));
                    //+''+'X'+''+(FormatFloat(CasasDecimais('Produtos'),FloatToStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat)))+''+'='+''+(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat))
                    ibRestaurante.Next;

                  end;//while

                  Writeln(F,(DesenhodeDivisaoPed));}

                  while not ibRestaurante.Eof do begin

                    //Writeln(F,(ibRestaurante.FieldByName('Produto').AsString));
                    iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(ibRestaurante.FieldByName('Produto').AsString),0);
                    if ibRestaurante.FieldByName('OBS').AsString <> '' Then begin
                    //Writeln(F,('-->> '+ibRestaurante.FieldByName('OBS').AsString),0);
                    iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('-->> '+ibRestaurante.FieldByName('OBS').AsString),0);
                    end;
                    //Writeln(F,(FormatFloat('0',ibRestaurante.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat)));
                    iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(FormatFloat('0',ibRestaurante.FieldByName('QTDE').AsFloat))+' X '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRUNIT').AsFloat))+' = '+(FormatFloat(CasasDecimais('Produtos'),ibRestaurante.FieldByName('VLRTOTAL').AsFloat)),0);
                    //+''+'X'+''+(FormatFloat(CasasDecimais('Produtos'),FloatToStr(ibServsVenda.FieldByName('VLRUNIT').AsFloat)))+''+'='+''+(FloatToStr(ibServsVenda.FieldByName('VLRTOTAL').AsFloat))
                    ibRestaurante.Next;

                  end;//while

                  //Writeln(F,(DesenhodeDivisaoPed));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(DesenhodeDivisaoPed),0);                  

                  //Writeln(F,('TOTAL BRUTO: '+ lbl_TotalMesas.Caption+''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('TOTAL BRUTO: '+ lbl_TotalMesas.Caption+''),0);

                  VlrTotal   := StrToFloat(lbl_TotalMesas.Caption);
                  QtdeDivid  := StrToFloat(lbl_edtQtdePessoas.Text);
                  TotalDividido := VlrTotal / QtdeDivid;
                  QtdeDividido  := FormatFloat(CasasDecimais('0'),QtdeDivid);

                  VlrPagtoDivid := FormatFloat(CasasDecimais('Produtos'),TotalDividido);

                  //Writeln(F,('MESAS:   '+lbl_Mesas.Caption+''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('MESAS:   '+lbl_Mesas.Caption+''),0);
                  //Writeln(F,('DIVIDIDO POR:   '+QtdeDividido+''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('DIVIDIDO POR:   '+QtdeDividido+''),0);
                  //Writeln(F,('TOTAL DIVIDIDO: '+VlrPagtoDivid+''));
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar('TOTAL DIVIDIDO: '+VlrPagtoDivid+''),0);

                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);
                  iRetorno:= iImprimirTexto_DUAL_DarumaFramework(pchar(''),0);

                  //CloseFile(F);

                //end;//if confirmacupom

              end;//if lpt1=sim

            end;//if lblqtdepessoas = ''

//****************************************************************************//

          end;//if imprimirdiretosim

          end;

       end;
       
       end;
////////////////////////////////////////////////////////////////////////////////


      end;

      end;//if frmrestaurante showing

    end;//case

end;

end.
