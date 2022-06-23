unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Image2: TImage;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    Label21: TLabel;
    Image10: TImage;
    Label22: TLabel;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Image11: TImage;
    Label8: TLabel;
    Label23: TLabel;
    MainMenu1: TMainMenu;
    INFO1: TMenuItem;
    INFO2: TMenuItem;
    KELUAR1: TMenuItem;
    Image7: TImage;
    Image8: TImage;
    Label10: TLabel;
    procedure KELUAR1Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image10Click(Sender: TObject);
    procedure Image7Click(Sender: TObject);
    procedure Image8Click(Sender: TObject);
    procedure INFO2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit7, Unit12;

{$R *.dfm}

procedure TForm1.KELUAR1Click(Sender: TObject);
begin

if messagedlg('Ingin Keluar Aplikasi ??',mtconfirmation,[mbYes]+[mbNo],0)=mrYes then begin
close;

end;
end;

procedure TForm1.Image1Click(Sender: TObject);
begin
  dataAnggota.Show;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  DataPenerbit.Show;
end;

procedure TForm1.Image10Click(Sender: TObject);
begin
  DataBuku.Show;
end;

procedure TForm1.Image7Click(Sender: TObject);
begin
  BeliBuku.Show;
end;

procedure TForm1.Image8Click(Sender: TObject);
begin
  LaporanPembelian.Show;
end;

procedure TForm1.INFO2Click(Sender: TObject);
begin
  Informasi.Show;
end;

end.
