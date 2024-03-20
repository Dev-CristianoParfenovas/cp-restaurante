unit untRelApdClienteOc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, ComCtrls, IBEAntialiasButton, classComboBox,
  IBQuery, DB;

type
  TfrmRelClienteOc = class(TForm)
    imgRelOcClienteAPD: TImage;
    cboCliente: TComboBox;
    lbl_Cliente: TLabel;
    cboNomeAnimal: TComboBox;
    lbl_Animal: TLabel;
    dtpDataOC: TDateTimePicker;
    lbl_DTOC: TLabel;
    lbl_OC: TLabel;
    ibeaAbrir: TIBEAntialiasButton;
    ibeaFechar: TIBEAntialiasButton;

    procedure Commit(IBQueryExec : TIBQuery);
    procedure ExecSELECTCliente;
    procedure FormShow(Sender: TObject);
    procedure cboClienteClick(Sender: TObject);
    procedure ibeaAbrirClick(Sender: TObject);
    procedure ibeaFecharClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelClienteOc: TfrmRelClienteOc;

  // variaveis para select do cliente
  IDClass : Integer;
  IDCliente : TClasseCombo;


  //variaveis para trazer o animal do cliente ao clicar no combo cliente.
  IDClienteOc : TClasseCombo;
  StringClienteOC : String;
  IDAnimalOc : TClasseCombo;

  ClassClienteRelOC : TClasseCombo;
  ClassAnimalRelOC : TClasseCombo;

implementation

uses untdmModule, untRelAPD;

{$R *.dfm}


procedure TfrmRelClienteOc.Commit(IBQueryExec : TIBQuery);
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

procedure TfrmRelClienteOc.ExecSELECTCliente;

begin

  with dmModule do begin

    ibClassificacao.Close;
    ibClassificacao.SQL.Clear;
    ibClassificacao.SQL.Add('SELECT IDCLASS FROM TBLCLASSIFICACAO WHERE DESCRICAO=''Clientes''');
    ibClassificacao.Open;
    IDClass := ibClassificacao.FieldByName('IDCLASS').AsInteger; // ATRIBUI A IDENTIFICAÇÃO DO CLIENTE NA VARIAVEL.

    ibCadastro.Close;
    ibCadastro.SQL.Clear;
    ibCadastro.SQL.Add('SELECT * FROM TBLCADASTRO WHERE IDCLASS=''' + IntToStr(IDClass) + '''');
    ibCadastro.Open;

    cboCliente.Clear;

    while not ibCadastro.Eof do begin

      IDCliente := TClasseCombo.Create;
      IDCliente.ID := ibCadastro.FieldByName('IDCAD').AsInteger;
      cboCliente.Items.AddObject(ibCadastro.FieldByName('NOME').AsString,IDCliente);
      ibCadastro.Next;

    end;{while}

  end;{whit}

end;


procedure TfrmRelClienteOc.FormShow(Sender: TObject);
begin

  dtpDataOC.DateTime := StrToDateTime(FormatDateTime('dd/mm/yyyy',Date));

  with dmModule do begin

    ExecSELECTCliente;

  end;{with}

end;

procedure TfrmRelClienteOc.cboClienteClick(Sender: TObject);
begin
  with dmModule do begin

    if cboCliente.ItemIndex <> -1 Then begin//SE HOUVER REGISTRO NO COMBO
      IDClienteOc         := TClasseCombo( cboCliente.Items.Objects[cboCliente.ItemIndex] );//ATRIBUI A CLASSE COMBO NA VARIAVEL
      StringClienteOc     := ' IDCADCLI=''' + InttoStr( IDClienteOc.ID ) + '''';//ATRIBUI O ID DO FIELD NA VARIAVEL STRING.

      //TRAZ NO COMBO SOMENTE OS COMBUSTIVEIS DO CADASTRO DE PRODUTOS REFERENTE AO ESTOQUE SELECIONADO.
      ibAnimalCli.Close;
      ibAnimalCli.SQL.Clear;
      ibAnimalCli.SQL.Add('SELECT * FROM TBLANIMALCLI WHERE ' + StringClienteOc);
      ibAnimalCli.Open;


      cboNomeAnimal.Clear;// LIMPA O COMBO

      while not ibAnimalCli.Eof do begin

        IDAnimalOc := TClasseCombo.Create;
        IDAnimalOc.ID := ibAnimalCli.FieldByName('IDANIMAL').AsInteger;
        cboNomeAnimal.Items.AddObject(ibAnimalCli.FieldByName('NOMEANIMAL').AsString,IDAnimalOc);
        ibAnimalCli.Next;

      end;{while}

    end;{if}
    
  end;{with}

end;

procedure TfrmRelClienteOc.ibeaAbrirClick(Sender: TObject);
begin

  with dmModule do begin

   if cboCliente.ItemIndex <> - 1 Then begin

   ClassClienteRelOC := TClasseCombo( cboCliente.Items.Objects[cboCliente.ItemIndex] );

   end;

   if cboNomeAnimal.ItemIndex <> - 1 Then begin

   ClassAnimalRelOC := TClasseCombo( cboNomeAnimal.Items.Objects[cboNomeAnimal.ItemIndex] );

   end;

  Commit(ibAnimalCli);
  ibAnimalCli.Close;
  ibAnimalCli.SQL.Clear;
  ibAnimalCli.SQL.Add('SELECT TBLANIMALCLI.NOMEANIMAL,TBLANIMALCLI.DATANACTO,TBLANIMALCLI.IDANIMAL,'
  + 'TBLANIMALCLI.PESO,TBLANIMALCLI.SEXODOANIMAL,TBLPELAGEM.NOME As TipoPelo,'
  + 'TBLCADASTRO.NOME As NomeCli,TBLRACA.NOME As NomeRaca,'
  + 'TBLAPDIGESTIVO.TIPOAPETITE,TBLAPDIGESTIVO.TIPOAPRALIM,TBLAPDIGESTIVO.TIPOINGAGUA,TBLAPDIGESTIVO.DATA,'
  + 'TBLAPDIGESTIVO.TIPOSALIVACAO,TBLAPDIGESTIVO.REGURGCOMIDA,TBLAPDIGESTIVO.REGURGLIQMUCO,'
  + 'TBLAPDIGESTIVO.REGURGERUCTACAO,TBLAPDIGESTIVO.VEZESAODIAREGURG,TBLAPDIGESTIVO.VOMITOSIMNAOAPD,'
  + 'TBLAPDIGESTIVO.VOMITOAPDHEMATOEMESE,TBLAPDIGESTIVO.VOMITOAPDBILE,TBLAPDIGESTIVO.VOMITOAPDESPUMOSO,'
  + 'TBLAPDIGESTIVO.VOMITOAPDCOMCOMIDA,TBLAPDIGESTIVO.VOMITOAPDLIQMUCO,TBLAPDIGESTIVO.DIARREIAAPDESPAMORFA,'
  + 'TBLAPDIGESTIVO.DIARREIAAPDPASTOSA,TBLAPDIGESTIVO.DIARREIAAPDLIQ,TBLAPDIGESTIVO.DIARREIAAPDHEMORR,'
  + 'TBLAPDIGESTIVO.DIARREIAAPDFLATULENCIA,TBLAPDIGESTIVO.DIARREIAAPDCOMMUCO,'
  + 'TBLAPDIGESTIVO.DIARREIAAPDCOLORACAO,TBLAPDIGESTIVO.DIARREIAAPDBORB,'
  + 'TBLDADOSOCORRENCIA.QUEIXAPRINC,TBLDADOSOCORRENCIA.DURACAO,'
  + 'TBLDADOSOCORRENCIA.CURSO,TBLDADOSOCORRENCIA.FREQUENCIA,TBLDADOSOCORRENCIA.TRATAMENTO,'
  + 'TBLDADOSOCORRENCIA.FORMAAPARICAO,TBLDADOSOCORRENCIA.RESULTADOS,'
  + 'TBLDADOSOCORRENCIA.OUTROSSINTOMASOBS FROM TBLANIMALCLI '
  + 'INNER JOIN TBLPELAGEM ON TBLANIMALCLI.IDPELAGEM=TBLPELAGEM.TIPO '
  + 'INNER JOIN TBLCADASTRO ON TBLANIMALCLI.IDCADCLI=TBLCADASTRO.IDCAD '
  + 'LEFT OUTER JOIN TBLAPDIGESTIVO ON TBLANIMALCLI.IDANIMAL=TBLAPDIGESTIVO.IDANIMAL '
  + 'INNER JOIN TBLDADOSOCORRENCIA ON TBLANIMALCLI.IDANIMAL=TBLDADOSOCORRENCIA.IDANIMAL '
  + 'INNER JOIN TBLRACA ON TBLANIMALCLI.IDANIMAL=TBLRACA.IDRACA WHERE TBLANIMALCLI.IDCADCLI=''' + IntToStr(ClassClienteRelOC.ID) + ''''
  + 'and TBLANIMALCLI.IDANIMAL=''' + IntToStr(ClassAnimalRelOC.ID) + ''' and TBLAPDIGESTIVO.DATA=:ParamData and TBLDADOSOCORRENCIA.DATA=:ParamData');
  ibAnimalCli.Open;

  ibAnimalCli.Close;
  ibAnimalCli.ParamByName('ParamData').Value := dtpDataOC.DateTime;
  ibAnimalCli.Open;


  Application.CreateForm(TfrmRelAPD, frmRelAPD);

    TRY

      with frmRelAPD do begin

        frmRelAPD.qrpRelAPD.DataSet := ibAnimalCli;

        qrdbCliente.DataSet     := ibAnimalCli;
        qrdbCliente.DataField   := ibAnimalCli.FieldByName('NomeCli').FieldName;

        //ATRIBUI OS NOMES DOS CAMPOS AOS QRDBTEXT DO QUICKREPORT
        qrdbNomeAnimal.DataSet    := ibAnimalCli;
        qrdbNomeAnimal.DataField  := ibAnimalCli.FieldByName('NOMEANIMAL').FieldName;

        qrdbSexo.DataSet   := ibAnimalCli;
        qrdbSexo.DataField := ibAnimalCli.FieldByName('SEXODOANIMAL').FieldName;


        qrdbRaca.DataSet     := ibAnimalCli;
        qrdbRaca.DataField   := ibAnimalCli.FieldByName('NomeRaca').FieldName;

        qrdbPeso.DataSet     := ibAnimalCli;
        qrdbPeso.DataField   := ibAnimalCli.FieldByName('PESO').FieldName;

        qrdbPelagem.DataSet     := ibAnimalCli;
        qrdbPelagem.DataField   := ibAnimalCli.FieldByName('TipoPelo').FieldName;

        qrdbNascto.DataSet     := ibAnimalCli;
        qrdbNascto.DataField   := ibAnimalCli.FieldByName('DATANACTO').FieldName;

        qrdbTipoApetite.DataSet     := ibAnimalCli;
        qrdbTipoApetite.DataField   := ibAnimalCli.FieldByName('TIPOAPETITE').FieldName;

        qrdbTipoAprAlim.DataSet     := ibAnimalCli;
        qrdbTipoAprAlim.DataField   := ibAnimalCli.FieldByName('TIPOAPRALIM').FieldName; 

        qrdbTipoIngAgua.DataSet     := ibAnimalCli;
        qrdbTipoIngAgua.DataField   := ibAnimalCli.FieldByName('TIPOINGAGUA').FieldName;

        qrdbTipoSalivacao.DataSet   := ibAnimalCli;
        qrdbTipoSalivacao.DataField := ibAnimalCli.FieldByName('TIPOSALIVACAO').FieldName;

        qrdbQueixaPrinc.DataSet     := ibAnimalCli;
        qrdbQueixaPrinc.DataField   := ibAnimalCli.FieldByName('QUEIXAPRINC').FieldName;

        qrdbDuracao.DataSet         := ibAnimalCli;
        qrdbDuracao.DataField       := ibAnimalCli.FieldByName('DURACAO').FieldName;

        qrdbCurso.DataSet         := ibAnimalCli;
        qrdbCurso.DataField       := ibAnimalCli.FieldByName('CURSO').FieldName;

        qrdbFreq.DataSet          := ibAnimalCli;
        qrdbFreq.DataField        := ibAnimalCli.FieldByName('FREQUENCIA').FieldName;

        qrdbTratamento.DataSet    := ibAnimalCli;
        qrdbTratamento.DataField  := ibAnimalCli.FieldByName('TRATAMENTO').FieldName;

        qrdbFormaap.DataSet    := ibAnimalCli;
        qrdbFormaap.DataField  := ibAnimalCli.FieldByName('FORMAAPARICAO').FieldName;

        qrdbResultados.DataSet    := ibAnimalCli;
        qrdbResultados.DataField  := ibAnimalCli.FieldByName('OUTROSSINTOMASOBS').FieldName;

        qrdbComida.DataSet    := ibAnimalCli;
        qrdbComida.DataField  := ibAnimalCli.FieldByName('REGURGCOMIDA').FieldName;

        qrdbLiqMuco.DataSet    := ibAnimalCli;
        qrdbLiqMuco.DataField  := ibAnimalCli.FieldByName('REGURGLIQMUCO').FieldName;

        qrdbEructacao.DataSet    := ibAnimalCli;
        qrdbEructacao.DataField  := ibAnimalCli.FieldByName('REGURGERUCTACAO').FieldName;

        qrdbVezesDia.DataSet    := ibAnimalCli;
        qrdbVezesDia.DataField  := ibAnimalCli.FieldByName('VEZESAODIAREGURG').FieldName;

        qrdbVomitoSimNaoApd.DataSet    := ibAnimalCli;
        qrdbVomitoSimNaoApd.DataField  := ibAnimalCli.FieldByName('VOMITOSIMNAOAPD').FieldName;

        qrdbVomitoHe.DataSet    := ibAnimalCli;
        qrdbVomitoHe.DataField  := ibAnimalCli.FieldByName('VOMITOAPDHEMATOEMESE').FieldName;

        qrdbVomitoBileApd.DataSet    := ibAnimalCli;
        qrdbVomitoBileApd.DataField  := ibAnimalCli.FieldByName('VOMITOAPDBILE').FieldName;

        qrdbVomitoEspumosoApd.DataSet    := ibAnimalCli;
        qrdbVomitoEspumosoApd.DataField  := ibAnimalCli.FieldByName('VOMITOAPDESPUMOSO').FieldName;

        qrdbVomitoComidaApd.DataSet    := ibAnimalCli;
        qrdbVomitoComidaApd.DataField  := ibAnimalCli.FieldByName('VOMITOAPDCOMCOMIDA').FieldName;

        qrdbVomitoLqMuco.DataSet    := ibAnimalCli;
        qrdbVomitoLqMuco.DataField  := ibAnimalCli.FieldByName('VOMITOAPDLIQMUCO').FieldName;

        qrdbEspessoA.DataSet    := ibAnimalCli;
        qrdbEspessoA.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDESPAMORFA').FieldName;

        qrdbdiarreiaPastosa.DataSet    := ibAnimalCli;
        qrdbdiarreiaPastosa.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDPASTOSA').FieldName;

        qrdbDiarreiaLiq.DataSet    := ibAnimalCli;
        qrdbDiarreiaLiq.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDLIQ').FieldName;

        qrdbDiarreiaHem.DataSet    := ibAnimalCli;
        qrdbDiarreiaHem.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDHEMORR').FieldName;

        qrdbdiarreiaBorb.DataSet    := ibAnimalCli;
        qrdbdiarreiaBorb.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDBORB').FieldName;

        qrdbdiarreiaFlat.DataSet    := ibAnimalCli;
        qrdbdiarreiaFlat.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDFLATULENCIA').FieldName;

        qrdbDiarreiaCMuco.DataSet    := ibAnimalCli;
        qrdbDiarreiaCMuco.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDCOMMUCO').FieldName;

        qrdbdiarreiaColoracao.DataSet    := ibAnimalCli;
        qrdbdiarreiaColoracao.DataField  := ibAnimalCli.FieldByName('DIARREIAAPDCOLORACAO').FieldName;

        qrpRelAPD.Preview;

      end; {if with}

    EXCEPT
      on E : Exception do begin
         frmRelAPD.Release;
         MessageDlg('Ocorreu um erro ao tentar mostrar o Formulário: ' + E.Message,mtError,[mbOk],0);
      end;
    END;
  //////////////////////////////////////////////////////////////


  end;{with}

end;

procedure TfrmRelClienteOc.ibeaFecharClick(Sender: TObject);
begin

  Close;
  
end;

end.
