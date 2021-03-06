unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ComCtrls, StdCtrls, Buttons, DB, ADODB;

type
  TdataAnggota = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    IDAnggota: TEdit;
    NamaAnggota: TEdit;
    TempatLahir: TEdit;
    AlamatAnggota: TEdit;
    NoHP: TEdit;
    JenisKelamin: TComboBox;
    New: TBitBtn;
    Simpan: TBitBtn;
    Cancel: TBitBtn;
    TglLahir: TDateTimePicker;
    Label25: TLabel;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
    ADOCDataAnggota: TADOConnection;
    ADOTDataAnggota: TADOTable;
    DSDataAnggota: TDataSource;
    Label7: TLabel;
    CariAnggota: TEdit;
    Print: TBitBtn;
    Label10: TLabel;
    Edit: TBitBtn;
    Refresh: TBitBtn;
    HapusData: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure SimpanClick(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure CariAnggotaChange(Sender: TObject);
    procedure PrintClick(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure HapusDataClick(Sender: TObject);
  private
    { Private declarations }
  public

  Procedure kosong;
  Procedure mati;
  Procedure hidup;
  Procedure awal;
    { Public declarations }
  end;

var
  dataAnggota: TdataAnggota;

implementation

uses Unit6;

{$R *.dfm}

procedure TDataAnggota.mati;
begin
IDAnggota.Enabled:=false;
NamaAnggota.Enabled:=false;
TempatLahir.Enabled:=false;
TglLahir.Enabled:=false;
JenisKelamin.Enabled:=false;
AlamatAnggota.Enabled:=false;
NoHP.Enabled:=false;
end;

procedure TDataAnggota.hidup;
begin
IDAnggota.Enabled:=false;
NamaAnggota.Enabled:=true;
TempatLahir.Enabled:=true;
TglLahir.Enabled:=true;
JenisKelamin.Enabled:=true;
AlamatAnggota.Enabled:=true;
NoHP.Enabled:=true;
end;

procedure TDataAnggota.kosong;
begin
IDAnggota.Text:='';
NamaAnggota.Text:='';
TempatLahir.Text:='';
CariAnggota.Text:='';
TglLahir.DateTime:=Date;
JenisKelamin.Text:='PILIH SALAH SATU !!';
AlamatAnggota.Text:='';
NoHP.Text:='';
end;

procedure TDataAnggota.awal;
begin
Simpan.Enabled:=false;
   New.Enabled:=true;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TdataAnggota.BitBtn1Click(Sender: TObject);
begin
kosong;
awal;
  dataAnggota.Close;
end;

procedure TdataAnggota.SimpanClick(Sender: TObject);
begin
  ADOTDataAnggota.Open;
  ADOTDataAnggota.Append;
  ADOTDataAnggota.FieldByName('ID_Anggota').AsString:=IDAnggota.Text;
  ADOTDataAnggota.FieldByName('Nama').AsString:=NamaAnggota.Text;
  ADOTDataAnggota.FieldByName('Jenis_kelamin').AsString:=JenisKelamin.Text;
  ADOTDataAnggota.FieldByName('Alamat').AsString:=AlamatAnggota.Text;
  ADOTDataAnggota.FieldByName('No_telp').AsString:=NoHP.Text;
  ADOTDataAnggota.FieldByName('Tmp_lhr').AsString:=TempatLahir.Text;
  ADOTDataAnggota.FieldByName('Tgl_lhr').AsDateTime:=TglLahir.Date;
  ADOTDataAnggota.Post;
  Showmessage('Data Berhasil di Simpan !!');
  kosong;
   Simpan.Enabled:=false;
   New.Enabled:=true;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
  mati;
end;

procedure TdataAnggota.NewClick(Sender: TObject);
var a:string;
    b:integer;
begin
  hidup;
  New.Enabled:=false;
  Edit.Enabled:=false;
  Simpan.Enabled:=true;
  Cancel.Enabled:=true;
  ADOTDataAnggota.Append;
  IDAnggota.Enabled:=false;
  DBGrid1.Enabled:=false;
  
  if ADOTDataAnggota.Recordset.RecordCount>0 then
  begin
  ADOTDataAnggota.Recordset.MoveFirst;
  b:=1;
  repeat
  a:='AGT'+format('%.2d',[b]);
  if (ADOTDataAnggota.Locate('ID_Anggota',a,[])=false) then
  begin
  IDAnggota.Text:=a;

  exit;
  end
  else
  begin
  ADOTDataAnggota.Recordset.MoveNext;
  b:=b+1;
  end;
  until(b>ADOTDataAnggota.Recordset.RecordCount+1);
  end
  else
  IDAnggota.Text:='AGT'+format('%.3d',[1]);

end;

procedure TdataAnggota.CancelClick(Sender: TObject);
begin
  mati;
  ADOTDataAnggota.Cancel;
  Edit.Enabled:=false;
  New.Enabled:=true;
  Simpan.Enabled:=false;
  Cancel.Enabled:=false;
  kosong;
  DBGrid1.Enabled:=true;
end;

procedure TdataAnggota.FormActivate(Sender: TObject);
begin
  ADOTDataAnggota.Close;
  ADOTDataAnggota.Open;
  mati;
  Simpan.Enabled:=false;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TdataAnggota.CariAnggotaChange(Sender: TObject);
begin
  ADOTDataAnggota.Locate('Nama',CariAnggota.Text,[LoPartialKey]);
end;

procedure TdataAnggota.PrintClick(Sender: TObject);
begin
  LaporanDataAnggota.QRDataAnggota.Preview;
end;

procedure TdataAnggota.EditClick(Sender: TObject);
begin
  ADOTDataAnggota.Edit;
  ADOTDataAnggota.FieldByName('Nama').AsString:=NamaAnggota.Text;
  ADOTDataAnggota.FieldByName('Jenis_kelamin').AsString:=JenisKelamin.Text;
  ADOTDataAnggota.FieldByName('Alamat').AsString:=AlamatAnggota.Text;
  ADOTDataAnggota.FieldByName('No_telp').AsString:=NoHP.Text;
  ADOTDataAnggota.FieldByName('Tmp_lhr').AsString:=TempatLahir.Text;
  ADOTDataAnggota.FieldByName('Tgl_lhr').AsDateTime:=TglLahir.Date;
  ADOTDataAnggota.Post;
  Showmessage('Data Berhasil di Edit !!');
  kosong;
  mati;
  Simpan.Enabled:=false;
New.Enabled:=true;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TdataAnggota.DBGrid1DblClick(Sender: TObject);
begin
IDAnggota.Enabled:=false;
Simpan.Enabled:=false;
New.Enabled:=false;
  Edit.Enabled:=true;
  Cancel.Enabled:=true;
  NamaAnggota.Text:=ADOTDataAnggota.FieldValues['Nama'];
  TempatLahir.Text:=ADOTDataAnggota.FieldValues['Tmp_lhr'];
  TglLahir.Date:=ADOTDataAnggota.FieldValues['Tgl_lhr'];
  JenisKelamin.Text:=ADOTDataAnggota.FieldValues['Jenis_Kelamin'];
  AlamatAnggota.Text:=ADOTDataAnggota.FieldValues['Alamat'];
  NoHP.Text:=ADOTDataAnggota.FieldValues['No_telp'];
  hidup;
end;

procedure TdataAnggota.RefreshClick(Sender: TObject);
begin
DataAnggota.Hide;
New.Enabled:=true;
Edit.Enabled:=false;
Simpan.Enabled:=false;
Cancel.Enabled:=false;
CariAnggota.Text:='';
kosong;
DBGrid1.Enabled:=true;
DataAnggota.Show;
end;

procedure TdataAnggota.HapusDataClick(Sender: TObject);
begin
   if Messagedlg('Yakin Ingin Menghapus Data?', mtConfirmation,mbOkCancel,0)=mrOk then
  ADOTDataAnggota.Delete;
  kosong;
  mati;
  awal;
end;

end.
