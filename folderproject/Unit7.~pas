unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Buttons;

type
  TLaporanPembelian = class(TForm)
    DBGrid1: TDBGrid;
    ADOCLapBeli: TADOConnection;
    ADOTLapBeli: TADOTable;
    DSLapBeli: TDataSource;
    Label1: TLabel;
    GroupBox2: TGroupBox;
    Refresh: TBitBtn;
    bbprint: TBitBtn;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    CariID: TEdit;
    Label14: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure CariIDChange(Sender: TObject);
    procedure bbprintClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  LaporanPembelian: TLaporanPembelian;

implementation

uses Unit11;

{$R *.dfm}

procedure TLaporanPembelian.BitBtn1Click(Sender: TObject);
begin
  CariID.Text:='';
  LaporanPembelian.Close;
end;

procedure TLaporanPembelian.RefreshClick(Sender: TObject);
begin
  ADOTLapBeli.Close;
  ADOTLapBeli.Open;
  CariID.Text:='';
end;

procedure TLaporanPembelian.CariIDChange(Sender: TObject);
begin
  ADOTLapBeli.Locate('IDPembelian',CariID.Text,[LoPartialKey]);
end;

procedure TLaporanPembelian.bbprintClick(Sender: TObject);
begin
  LaporanPembelianBuku.QRPembelian.Preview;
end;

end.
