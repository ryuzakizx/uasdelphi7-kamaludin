unit Unit12;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ShellAPI;

type
  TInformasi = class(TForm)
    Label1: TLabel;
    Kembali: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    Timer1: TTimer;
    Tanggal: TLabel;
    BitBtn4: TBitBtn;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Informasi: TInformasi;

implementation

{$R *.dfm}

procedure TInformasi.Timer1Timer(Sender: TObject);
begin
 Tanggal.Caption:=formatdatetime('dddd, dd mmmm yyyy ' ,date()) + '' + timetostr(Now);
end;

procedure TInformasi.BitBtn4Click(Sender: TObject);
begin
  Informasi.Close;
end;

procedure TInformasi.BitBtn1Click(Sender: TObject);
begin
  ShellExecute (0, 'Open','https://www.instagram.com/10969kmal', '','',SW_SHOWNORMAL);
end;

procedure TInformasi.KembaliClick(Sender: TObject);
begin
   ShellExecute (0, 'Open','https://wa.me/082157339086', '','',SW_SHOWNORMAL);
end;

procedure TInformasi.BitBtn3Click(Sender: TObject);
begin
  ShellExecute (0, 'Open','https://www.linkedin.com/in/kamaludin-692940235/', '','',SW_SHOWNORMAL);
end;

procedure TInformasi.BitBtn2Click(Sender: TObject);
begin
  ShellExecute (0, 'Open','https://github.com/ryuzakizx', '','',SW_SHOWNORMAL);
end;

end.
