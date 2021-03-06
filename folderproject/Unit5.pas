unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, DBCtrls, StdCtrls, Buttons, ADODB, DB,
  Mask;

type
  TBeliBuku = class(TForm)
    BitBtn1: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label26: TLabel;
    DTimePicker: TDateTimePicker;
    GroupBox4: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Qty: TEdit;
    prosesbuku: TBitBtn;
    hapus: TBitBtn;
    Simpan: TBitBtn;
    Label6: TLabel;
    ADOCBeliBuku: TADOConnection;
    ADOTBeliBuku: TADOTable;
    DSBeliBuku: TDataSource;
    Label8: TLabel;
    Label9: TLabel;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    Label11: TLabel;
    TotalBayar: TLabel;
    Label13: TLabel;
    ADOConnection1: TADOConnection;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOQuery1: TADOQuery;
    DBCLBuku: TDBLookupComboBox;
    DBJudulBuku: TDBEdit;
    DBPengarang: TDBEdit;
    DBHarga: TDBEdit;
    DBNamaBeli: TDBEdit;
    DBAlamat: TDBEdit;
    ADOCPembeli: TADOConnection;
    ADOTPembeli: TADOTable;
    ADOQPembeli: TADOQuery;
    DSPembeli: TDataSource;
    DBLIDBeli: TDBLookupComboBox;
    Label12: TLabel;
    IDBeli: TEdit;
    Label14: TLabel;
    ADOCPembelian: TADOConnection;
    ADOTTotalBeli: TADOTable;
    DSPembelian: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure hapusClick(Sender: TObject);
    procedure prosesbukuClick(Sender: TObject);
    procedure SimpanClick(Sender: TObject);
    procedure bbdeleteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  BeliBuku: TBeliBuku;

implementation

{$R *.dfm}

procedure TBeliBuku.BitBtn1Click(Sender: TObject);
begin
 DBCLBuku.KeyValue:='';
 IDBeli.Text:='';
  DBJudulBuku.Text:='';
  DBPengarang.Text:='';
  DBHarga.Text:='0';
  TotalBayar.Caption:='0';
  Qty.Text:='0';
  DBLIDBeli.KeyValue:='';
  DBNamaBeli.Text:='';
  DBAlamat.Text:='';
  DTimePicker.Date;
  
  BeliBuku.Close;
end;

procedure TBeliBuku.BitBtn2Click(Sender: TObject);
begin
IDBeli.Text:='';
  DBLIDBeli.KeyValue:='';
  DBNamaBeli.Text:='';
  DBAlamat.Text:='';
  DTimePicker.Date;
end;

procedure TBeliBuku.hapusClick(Sender: TObject);
begin
  DBCLBuku.KeyValue:='';
  DBJudulBuku.Text:='';
  DBPengarang.Text:='';
  DBHarga.Text:='0';
  TotalBayar.Caption:='0';
  Qty.Text:='0';
end;

procedure TBeliBuku.prosesbukuClick(Sender: TObject);
begin
  TotalBayar.caption:=inttostr(strtoint(DBHarga.Text)*strtoint(Qty.Text));
end;

procedure TBeliBuku.SimpanClick(Sender: TObject);
begin
  ADOTTotalBeli.Open;
  ADOTTotalBeli.Append;
  ADOTTotalBeli.FieldByName('IDPembelian').AsString:=IDBeli.Text;
  ADOTTotalBeli.FieldByName('NamaPembeli').AsString:=DBNamaBeli.Text;
  ADOTTotalBeli.FieldByName('Alamat').AsString:=DBAlamat.Text;
  ADOTTotalBeli.FieldByName('TanggalBeli').AsDateTime:=DTimePicker.Date;
  ADOTTotalBeli.FieldByName('JudulBuku').AsString:=DBJudulBuku.Text;
  ADOTTotalBeli.FieldByName('JumlahBeli').AsString:=Qty.Text;
  ADOTTotalBeli.FieldByName('Total').AsString:=TotalBayar.Caption;
  ADOTTotalBeli.Post;
  Showmessage('Data Berhasil di Simpan !!');
  IDBeli.Text:='';
  DBCLBuku.KeyValue:='';
  DBJudulBuku.Text:='';
  DBPengarang.Text:='';
  DBHarga.Text:='0';
  TotalBayar.Caption:='0';
  Qty.Text:='0';
  DBLIDBeli.KeyValue:='';
  DBNamaBeli.Text:='';
  DBAlamat.Text:='';
  DTimePicker.Date;

end;

procedure TBeliBuku.bbdeleteClick(Sender: TObject);
begin
  if Messagedlg('Yakin Ingin Menghapus Data?', mtConfirmation,mbOkCancel,0)=mrOk then
  ADOTTotalBeli.Delete;
end;

end.
