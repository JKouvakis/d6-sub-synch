unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Edit3: TEdit;
    Shape1: TShape;
    Edit1: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  F1, F2: TextFile;
  S,S2,Fir,Sec: String;
  I,Frm,Frm2,Diaf: Integer;
begin
  Diaf := Strtoint(Edit2.Text) - Strtoint(Edit3.Text);
  if OpenDialog1.Execute then begin
    AssignFile(F1, OpenDialog1.Filename);
    Reset(F1);
    if SaveDialog1.Execute then begin
      AssignFile(F2, SaveDialog1.Filename);
      Rewrite(F2);
      while not Eof(F1) do
      begin
        ReadLn(F1, S);
        If Ansipos('{',S) = 1 Then
          begin
          I := AnsiPos('}{',S);
          Frm := Strtoint(Copy(S,2,I-2));
          Fir := Copy(S,I+2,Length(S));
          I := AnsiPos('}',Fir);
          Frm2 := Strtoint(Copy(Fir,1,I-1));
          Sec := Copy(Fir,I+1,Length(Fir));
          S2 := '{' + InttoStr(Frm - Diaf) + '}{' + InttoStr (Frm2 - Diaf) + '}' + Sec;
          WriteLn(F2, S2);
          end
        else
          WriteLn(F2,S);
      end;
    end;
    CloseFile(F2);
    CloseFile(F1);
  end;
end;


procedure TForm1.Button2Click(Sender: TObject);
var
  F1, F2: TextFile;
  S,S2,Fir,Sec: String;
  I,Frm,Frm2,Frmmem,Diaf,Diaf2,Diafmem: Integer;
begin
  Diaf := 0;
  Diaf2 := 0;
  Frmmem :=0;
  diafmem :=0;
  if OpenDialog1.Execute then begin
    AssignFile(F1, OpenDialog1.Filename);
    Reset(F1);
    if SaveDialog1.Execute then begin
      AssignFile(F2, SaveDialog1.Filename);
      Rewrite(F2);
      while not Eof(F1) do
      begin
        ReadLn(F1, S);
        If Ansipos('{',S) = 1 Then
          begin
          I := AnsiPos('}{',S);
          Frm := Strtoint(Copy(S,2,I-2));
          Fir := Copy(S,I+2,Length(S));
          I := AnsiPos('}',Fir);
          Frm2 := Strtoint(Copy(Fir,1,I-1));
          Sec := Copy(Fir,I+1,Length(Fir));

          {prakseis}

          If Frmmem <> 0 Then
            Diaf := round((Frm - Frmmem)* 1 / 23);
          Diaf2:= round((Frm2-Frm)* 1 / 23);

          Diafmem := Diafmem + Diaf;
          Frm := Frm - Diafmem;
          Diafmem := Diafmem + Diaf2;
          Frmmem := Frm2;
          Frm2 := Frm2 - Diafmem;


          S2 := '{' + InttoStr(Frm) + '}{' + InttoStr (Frm2) + '}' + Sec;
          WriteLn(F2, S2);

          end
        else
          WriteLn(F2,S);
      end;
    end;
    CloseFile(F2);
    CloseFile(F1);
  end;
end;

end.
