unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, DB, ADODB, DBCtrls, Mask;

type
  TDataBuku = class(TForm)
    Label1: TLabel;
    Kembali: TBitBtn;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label30: TLabel;
    IDBuku: TEdit;
    JdlBuku: TEdit;
    Pengarang: TEdit;
    Harga: TEdit;
    Th_terbit: TEdit;
    New: TBitBtn;
    Simpan: TBitBtn;
    Cancel: TBitBtn;
    DBGrid1: TDBGrid;
    ADOCDataBuku: TADOConnection;
    ADOTDataBuku: TADOTable;
    DSDataBuku: TDataSource;
    penerbit: TLabel;
    ADOCInputBuku: TADOConnection;
    ADOTInputBuku: TADOTable;
    ADOQInputBuku: TADOQuery;
    DSInputBuku: TDataSource;
    DBLCBPenerbit: TDBLookupComboBox;
    Label4: TLabel;
    DBPenerbit: TDBEdit;
    Label7: TLabel;
    CariBuku: TEdit;
    Label10: TLabel;
    Edit: TBitBtn;
    Refresh: TBitBtn;
    HapusData: TBitBtn;
    Print: TBitBtn;
    procedure KembaliClick(Sender: TObject);
    procedure SimpanClick(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure CariBukuChange(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure HapusDataClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
  private
    { Private declarations }
  public

  Procedure kosong;
  Procedure mati;
  Procedure hidup;

    { Public declarations }
  end;

var
  DataBuku: TDataBuku;

implementation

uses Unit10;

{$R *.dfm}

procedure TDataBuku.mati;
begin
IDBuku.Enabled:=false;
JdlBuku.Enabled:=false;
Pengarang.Enabled:=false;
Th_terbit.Enabled:=false;
DBLCBPenerbit.Enabled:=false;
Harga.Enabled:=false;
end;

procedure TDataBuku.hidup;
begin
IDBuku.Enabled:=false;
JdlBuku.Enabled:=true;
Pengarang.Enabled:=true;
Th_terbit.Enabled:=true;
DBLCBPenerbit.Enabled:=true;
Harga.Enabled:=true;
end;

procedure TDataBuku.kosong;
begin
IDBuku.Text:='';
JdlBuku.Text:='';
Pengarang.Text:='';
Th_terbit.Text:='';
CariBuku.Text:='';
DBLCBPenerbit.KeyValue:='';
DBPenerbit.Text:='';
Harga.Text:='';
end;

procedure TDataBuku.KembaliClick(Sender: TObject);
begin
kosong;
  CariBuku.Text:='';
  DataBuku.Close;
end;

procedure TDataBuku.SimpanClick(Sender: TObject);
begin
  ADOTDataBuku.Open;
  ADOTDataBuku.Append;
  ADOTDataBuku.FieldByName('IDBuku').AsString:=IDBuku.Text;
  ADOTDataBuku.FieldByName('JdlBuku').AsString:=JdlBuku.Text;
  ADOTDataBuku.FieldByName('Pengarang').AsString:=Pengarang.Text;
  ADOTDataBuku.FieldByName('Th_terbit').AsString:=Th_terbit.Text;
  ADOTDataBuku.FieldByName('Penerbit').AsString:=DBPenerbit.Text;
  ADOTDataBuku.FieldByName('Harga').AsString:=Harga.Text;
  ADOTDataBuku.Post;
  Showmessage('Data Berhasil di Simpan !!');
  kosong;
  Simpan.Enabled:=false;
   New.Enabled:=true;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
  mati;
end;

procedure TDataBuku.NewClick(Sender: TObject);
var a:string;
    b:integer;
begin
  hidup;
  New.Enabled:=false;
  Edit.Enabled:=false;
  Simpan.Enabled:=true;
  Cancel.Enabled:=true;
  ADOTDataBuku.Append;
  IDBuku.Enabled:=false;
  DBGrid1.Enabled:=false;

  if ADOTDataBuku.Recordset.RecordCount>0 then
  begin
  ADOTDataBuku.Recordset.MoveFirst;
  b:=1;
  repeat
  a:='BK'+format('%.2d',[b]);
  if (ADOTDataBuku.Locate('IDBuku',a,[])=false) then
  begin
  IDBuku.Text:=a;

  exit;
  end
  else
  begin
  ADOTDataBuku.Recordset.MoveNext;
  b:=b+1;
  end;
  until(b>ADOTDataBuku.Recordset.RecordCount+1);
  end
  else
  IDBuku.Text:='BK'+format('%.d',[1]);
end;

procedure TDataBuku.CancelClick(Sender: TObject);
begin
  mati;
  ADOTDataBuku.Cancel;
  New.Enabled:=true;
  Edit.Enabled:=false;
  Simpan.Enabled:=false;
  Cancel.Enabled:=false;
  kosong;
  DBGrid1.Enabled:=true;
end;

procedure TDataBuku.FormActivate(Sender: TObject);
begin
  ADOTDataBuku.Close;
  ADOTDataBuku.Open;
  mati;
  SImpan.Enabled:=false;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TDataBuku.Button1Click(Sender: TObject);
begin
    ADOTDataBuku.Close;
    ADOTDataBuku.Open;
end;

procedure TDataBuku.CariBukuChange(Sender: TObject);
begin
  ADOTDataBuku.Locate('JdlBuku',CariBuku.Text,[LoPartialKey]);
end;

procedure TDataBuku.RefreshClick(Sender: TObject);
begin
  DataBuku.Hide;
New.Enabled:=true;
Simpan.Enabled:=false;
Cancel.Enabled:=false;
Edit.Enabled:=false;
CariBuku.Text:='';
DBGrid1.Enabled:=true;
kosong;
DataBuku.Show;
end;

procedure TDataBuku.HapusDataClick(Sender: TObject);
begin
  if Messagedlg('Yakin Ingin Menghapus Data?', mtConfirmation,mbOkCancel,0)=mrOk then
  ADOTDataBuku.Delete;
end;

procedure TDataBuku.DBGrid1DblClick(Sender: TObject);
begin
New.Enabled:=false;
  Edit.Enabled:=true;
  Cancel.Enabled:=true;
  DBPenerbit.Enabled:=false;
  Simpan.Enabled:=false;
  IDBuku.Text:=ADOTDataBuku.FieldValues['IDBuku'];
  JdlBuku.Text:=ADOTDataBuku.FieldValues['JdlBuku'];
  Pengarang.Text:=ADOTDataBuku.FieldValues['Pengarang'];
  Th_terbit.Text:=ADOTDataBuku.FieldValues['Th_terbit'];
  DBLCBPenerbit.KeyValue:=ADOTInputBuku.FieldValues['IDPenerbit'];
  DBPenerbit.Text:=ADOTDataBuku.FieldValues['Penerbit'];
  Harga.Text:=ADOTDataBuku.FieldValues['Harga'];
  hidup;
end;

procedure TDataBuku.EditClick(Sender: TObject);
begin
  ADOTDataBuku.Edit;
  ADOTDataBuku.FieldByName('IDBuku').AsString:=IDBuku.Text;
  ADOTDataBuku.FieldByName('JdlBuku').AsString:=JdlBuku.Text;
  ADOTDataBuku.FieldByName('Pengarang').AsString:=Pengarang.Text;
  ADOTDataBuku.FieldByName('Th_terbit').AsString:=Th_terbit.Text;
  ADOTDataBuku.FieldByName('Penerbit').AsString:=DBPenerbit.Text;
  ADOTDataBuku.FieldByName('Harga').AsString:=Harga.Text;
  ADOTDataBuku.Post;
 Showmessage('Data Berhasil di Edit !!');
  kosong;
    mati;
  Simpan.Enabled:=false;
New.Enabled:=true;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TDataBuku.PrintClick(Sender: TObject);
begin
  LaporanDataBuku.QRDataBuku.Preview;
end;

end.
