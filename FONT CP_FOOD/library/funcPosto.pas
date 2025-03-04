unit funcPosto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls,Winsock,Registry,Printers,AppEvnts,ShellApi,
  ComCtrls, ExtCtrls, Menus, DB, Buttons, Mask, DBTables, DBIPROCS, DBITypes,
  DBIErrs, Gauges, ImgList, ToolWin, jpeg, ExtDlgs, IniFiles;

type
  TStrArray = array of string;
  //TTestClass = String;

  function GetAveCharSize(Canvas: TCanvas): TPoint;
  function PromptString(FormName: TForm; const ACaption, APrompt: string;
  var Value: string): Boolean; overload;

  //fun��es de formata��o
  function CasasDecimais(Param : String): String;

  function SenhaAcesso(FormName: TForm; const ACaption, APrompt: string;
  var Value: string): Boolean; overload;
  function SenhaGeradaHoje : String;

  function Explode(var a: TStrArray; Border, S: string): Integer;

{$IFNDEF WIN32}
const MAX_PATH = 144;

{$ENDIF}

var

 IDUsuario : Integer;
 UsuarioLogado : String; //DEFINE QUAL � O USUARIO QUE ESTA CONECTADO NO SISTEMA
 NomeFantasia   : String; //DEFINE QUAL � O NOME DA EMPRESA
 EmailEmpresa  : String; //DEFINE QUAL � O EMAIL DA EMPRESA
 FuncionarioComissao : Integer;
 ConfirmaMSG : Integer;

  //VARIAVEIS PARA AS CASAS DECIMAIS
  ConfigSiS : TIniFile;
  FormatoMoeda : String;
  Casas : Longint;

implementation

//CRIA AS FUNCOES DE INPUT
function GetAveCharSize(Canvas: TCanvas): TPoint;
var
  I: Integer;
  Buffer: array[0..51] of Char;
begin
  for I := 0 to 25 do Buffer[I] := Chr(I + Ord('A'));
  for I := 0 to 25 do Buffer[I + 26] := Chr(I + Ord('a'));
  GetTextExtentPoint(Canvas.Handle, Buffer, 52, TSize(Result));
  Result.X := Result.X div 52;
end;

function PromptString(FormName: TForm; const ACaption, APrompt: string;
  var Value: string): Boolean; overload;
const
  SMsgDlgOK = 'OK';
  SMsgDlgCancel = 'Cancelar';
var
  x, y, w, h: Integer;
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form   := TForm.Create(Application);
  with Form do
    try
      Canvas.Font  := Font;
      DialogUnits  := GetAveCharSize(Canvas);
      BorderStyle  := bsDialog;
      Caption      := ACaption;
      ClientWidth  := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(63, DialogUnits.Y, 8);

      // center Horzontally
      w := (FormName.Width - Form.Width) div 2;
      X := FormName.Left + W;
      if x < 0 then
        x := 0
      else if x + w > Screen.Width then x := Screen.Width - Form.Width;
      Form.Left := X;

      // center vertically
      h := (FormName.Height - Form.Height) div 2;
      y := FormName.Top + h;
      if y < 0 then
        y := 0
      else if y + h > Screen.Height then y := Screen.Height - Form.Height;
      Form.Left := X;
      Form.Top  := Y;

      Prompt := TLabel.Create(Form);
      with Prompt do begin
        Parent   := Form;
        AutoSize := True;
        Left     := MulDiv(8, DialogUnits.X, 4);
        Top      := MulDiv(8, DialogUnits.Y, 8);
        Caption  := APrompt;
      end;
      Edit := TEdit.Create(Form);
      with Edit do begin
        Parent    := Form;
        Left      := Prompt.Left;
        Top       := MulDiv(19, DialogUnits.Y, 8);
        Width     := MulDiv(164, DialogUnits.X, 4);
        CharCase  := ecUpperCase;
        MaxLength := 255;
        Text      := Value;
        SelectAll;
      end;
      ButtonTop    := MulDiv(41, DialogUnits.Y, 8);
      ButtonWidth  := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do begin
        Parent      := Form;
        Caption     := SMsgDlgOK;
        ModalResult := mrOk;
        default     := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do begin
        Parent      := Form;
        Caption     := SMsgDlgCancel;
        ModalResult := mrCancel;
        Cancel      := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;

      if ShowModal = mrOk then begin
        Value  := Edit.Text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

function CasasDecimais(Param : String): String;

begin

  with ConfigSiS do begin

    ConfigSiS := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'Data\RunTime\sis.ini'); //Cria o vinculo com o Arquivo ini
    Casas := ReadInteger('Formatacoes','FormatoMoedaCasas',2);//atribui as chaves do arquivo ini na variavel

    if Param = 'Produtos' Then begin

        Result := ',0.00';

    end else begin

      if Casas = 2 Then begin

        Result := ',0.00';

      end else begin

        Result := ',0.000';

      end; {if}

    end; {if}

  end; {if}

end;

function SenhaAcesso(FormName: TForm; const ACaption, APrompt: string;
  var Value: string): Boolean; overload;
const
  SMsgDlgOK = 'OK';
  SMsgDlgCancel = 'Cancelar';
var
  x, y, w, h: Integer;
  Form: TForm;
  Prompt: TLabel;
  Edit: TEdit;
  DialogUnits: TPoint;
  ButtonTop, ButtonWidth, ButtonHeight: Integer;
begin
  Result := False;
  Form   := TForm.Create(Application);
  with Form do
    try
      Canvas.Font  := Font;
      DialogUnits  := GetAveCharSize(Canvas);
      BorderStyle  := bsDialog;
      Caption      := ACaption;
      ClientWidth  := MulDiv(180, DialogUnits.X, 4);
      ClientHeight := MulDiv(63, DialogUnits.Y, 8);

      // center Horzontally
      w := (FormName.Width - Form.Width) div 2;
      X := FormName.Left + W;
      if x < 0 then
        x := 0
      else if x + w > Screen.Width then x := Screen.Width - Form.Width;
      Form.Left := X;

      // center vertically
      h := (FormName.Height - Form.Height) div 2;
      y := FormName.Top + h;
      if y < 0 then
        y := 0
      else if y + h > Screen.Height then y := Screen.Height - Form.Height;
      Form.Left := X;
      Form.Top  := Y;

      Prompt := TLabel.Create(Form);
      with Prompt do begin
        Parent   := Form;
        AutoSize := True;
        Left     := MulDiv(8, DialogUnits.X, 4);
        Top      := MulDiv(8, DialogUnits.Y, 8);
        Caption  := APrompt;
      end;
      Edit := TEdit.Create(Form);
      with Edit do begin
        Parent    := Form;
        Left      := Prompt.Left;
        Top       := MulDiv(19, DialogUnits.Y, 8);
        Width     := MulDiv(164, DialogUnits.X, 4);
        MaxLength := 255;
        Text      := Value;
        SelectAll;
      end;
      ButtonTop    := MulDiv(41, DialogUnits.Y, 8);
      ButtonWidth  := MulDiv(50, DialogUnits.X, 4);
      ButtonHeight := MulDiv(14, DialogUnits.Y, 8);
      with TButton.Create(Form) do begin
        Parent      := Form;
        Caption     := SMsgDlgOK;
        ModalResult := mrOk;
        default     := True;
        SetBounds(MulDiv(38, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;
      with TButton.Create(Form) do begin
        Parent      := Form;
        Caption     := SMsgDlgCancel;
        ModalResult := mrCancel;
        Cancel      := True;
        SetBounds(MulDiv(92, DialogUnits.X, 4), ButtonTop, ButtonWidth,
          ButtonHeight);
      end;

      if ShowModal = mrOk then begin
        Value  := Edit.Text;
        Result := True;
      end;
    finally
      Form.Free;
    end;
end;

function SenhaGeradaHoje : String;
begin
  //PARA TER ACESSO AO SISTEMA DIGITE A SENHA "DIA + MES + ANO + 1000"
  result := IntToStr(StrToInt(FormatDateTime('dd',now)) + StrToInt(FormatDateTime('m',now)) + StrToInt(FormatDateTime('yyyy',now)) + 1000);
end;

function Explode(var a: TStrArray; Border, S: string): Integer;
var
  S2: string;
begin
  Result  := 0;
  S2 := S + Border;
  repeat
    SetLength(A, Length(A) + 1);
    a[Result] := Copy(S2, 0,Pos(Border, S2) - 1);
    Delete(S2, 1,Length(a[Result] + Border));
    Inc(Result);
  until S2 = '';
end;

end.
