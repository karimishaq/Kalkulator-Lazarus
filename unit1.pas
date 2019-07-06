unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
    TSQR: TButton;
    plus_min: TButton;
    koma: TButton;
    sama_dengan: TButton;
    tambah: TButton;
    kurang: TButton;
    kali: TButton;
    bagi: TButton;
    AC: TButton;
    CE: TButton;
    TSQRT: TButton;
    Button2: TButton;
    Backspace: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Bilangan: TEdit;
    procedure ACClick(Sender: TObject);
    procedure Button0Click(Sender: TObject);
    procedure CEClick(Sender: TObject);
    procedure BackspaceClick(Sender: TObject);
    procedure bagiClick(Sender: TObject);
    procedure komaClick(Sender: TObject);
    procedure ModulusClick(Sender: TObject);
    procedure plus_minClick(Sender: TObject);
    procedure sama_denganClick(Sender: TObject);
    procedure TSQRClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure kaliClick(Sender: TObject);
    procedure kurangClick(Sender: TObject);
    procedure TSQRTClick(Sender: TObject);
    procedure tambahClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  ganti_angka:Boolean;
  hasil:real=0;
  tangka:real=0;
  tanda:(tsama, ttambah, tkurang, tbagi, tkali);
implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
  begin
      s:=s+'1';
      Bilangan.Text:=s;
  end;
end;

procedure TForm1.BackspaceClick(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if(length(s)>1)then
    begin
        SetLength(s, Length(s)-1);
        if(s='-')then s:='0';
    end
  else s:='0';
  Bilangan.Text:=s;
end;

procedure TForm1.komaClick(Sender: TObject);
VAR S:String;
    i:integer;
    ada:Boolean=false;
begin
   s:=Bilangan.Text;
   for i:=1 to length(s) do
   begin
       if(s[i]='.')then
       begin
           ada:=true;
           break;
       end;
   end;
   if(not(ada))then s:=s+'.';
   Bilangan.Text:=s;
end;

procedure TForm1.ModulusClick(Sender: TObject);
begin

end;

procedure TForm1.plus_minClick(Sender: TObject);
var s:string;
begin
    s:=Bilangan.Text;
    if(s<>'0') then
    begin
      if(s[1]<>'-')then
      begin
          s:='-'+s;
          Bilangan.Text:=s;
      end
      else
      begin
          delete(s, 1, 1);
          Bilangan.Text:=s;
      end;
    end;
end;

procedure TForm1.sama_denganClick(Sender: TObject);
var s:string;
    tmp:integer;
begin
    s:=Bilangan.Text;
    tangka:=StrToFloat(s);
    if(ganti_angka)then
    begin
      case tanda of
          ttambah:
          Begin
              hasil:=hasil+tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tkurang:
          Begin
              hasil:=hasil-tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tkali:
          Begin
              hasil:=hasil*tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tbagi:
          Begin
              hasil:=hasil / tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tsama:
          Begin
              hasil:=tangka;
          end;
      end;
      ganti_angka:=false;
    end;
    tanda:=ttambah;
end;

procedure TForm1.ACClick(Sender: TObject);
begin
   hasil:=0;
   tanda:=tsama;
   tangka:=0;
   Bilangan.Text:='0';
end;

procedure TForm1.Button0Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tanda<>tsama) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'0';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'2';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'3';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'4';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button5Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'5';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button6Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'6';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button7Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'7';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button8Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'8';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.Button9Click(Sender: TObject);
var s:string;
begin
  s:=Bilangan.Text;
  if((tangka<>0) or (s='0'))then
  begin
    ganti_angka:=true;
    s:='';
    tangka:=0;
  end;
  if(length(s)<12)then
    begin
        s:=s+'9';
        Bilangan.Text:=s;
    end;
end;

procedure TForm1.CEClick(Sender: TObject);
begin
   hasil:=0;
   tanda:=tsama;
   tangka:=0;
   Bilangan.Text:='0';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Bilangan.Text:='0';
   tanda:=tsama;
   hasil:=0;
end;

procedure TForm1.kurangClick(Sender: TObject);
var s:string;
    tmp:integer;
begin
    s:=Bilangan.Text;
    tangka:=StrToFloat(s);
    if(ganti_angka)then
    begin
      case tanda of
          ttambah:
          Begin
              hasil:=hasil+tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tkurang:
          Begin
              hasil:=hasil-tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tkali:
          Begin
              hasil:=hasil*tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tbagi:
          Begin
              hasil:=hasil / tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tsama:
          Begin
              hasil:=tangka;
          end;
      end;
      ganti_angka:=false;
    end;
    tanda:=tkurang;
end;

procedure TForm1.tambahClick(Sender: TObject);
var s:string;
    tmp:integer;
begin
    s:=Bilangan.Text;
    tangka:=StrToFloat(s);
    if(ganti_angka)then
    begin
      case tanda of
          ttambah:
          Begin
              hasil:=hasil+tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tkurang:
          Begin
              hasil:=hasil-tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tkali:
          Begin
              hasil:=hasil*tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tbagi:
          Begin
              hasil:=hasil / tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tsama:
          Begin
              hasil:=tangka;
          end;
      end;
      ganti_angka:=false;
    end;
    tanda:=ttambah;
end;

procedure TForm1.bagiClick(Sender: TObject);
var s:string;
    tmp:integer;
begin
    s:=Bilangan.Text;
    tangka:=StrToFloat(s);
    if(ganti_angka)then
    begin
      case tanda of
          ttambah:
          Begin
              hasil:=hasil+tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tkurang:
          Begin
              hasil:=hasil-tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tkali:
          Begin
              hasil:=hasil*tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tbagi:
          Begin
              hasil:=hasil / tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tsama:
          Begin
              hasil:=tangka;
          end;
      end;
      ganti_angka:=false;
    end;
    tanda:=tbagi;
end;

procedure TForm1.kaliClick(Sender: TObject);
var s:string;
    tmp:integer;
begin
    s:=Bilangan.Text;
    tangka:=StrToFloat(s);
    if(ganti_angka)then
    begin
      case tanda of
          ttambah:
          Begin
              hasil:=hasil+tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tkurang:
          Begin
              hasil:=hasil-tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tkali:
          Begin
              hasil:=hasil*tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;

          tbagi:
          Begin
              hasil:=hasil / tangka;
              s:=floattostr(hasil);
              Bilangan.Text:=s;
          end;
          tsama:
          Begin
              hasil:=tangka;
          end;
      end;
      ganti_angka:=false;
    end;
    tanda:=tkali;
end;

procedure TForm1.TSQRTClick(Sender: TObject);
VAR S:String;
begin
   s:=Bilangan.Text;
   tangka:=StrToFloat(s);
   tangka:=sqrt(tangka);
   s:=FloatToStr(tangka);
   Bilangan.Text:=s;
end;

procedure TForm1.TSQRClick(Sender: TObject);
var s:string;
    tmp:integer;
begin
   s:=Bilangan.Text;
   tangka:=StrToFloat(s);
   tangka:=sqr(tangka);
   s:=FloatToStr(tangka);
   Bilangan.Text:=s;
end;

end.

