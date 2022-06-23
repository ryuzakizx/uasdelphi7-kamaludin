unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, Grids, DBGrids, ComCtrls, DBCtrls, StdCtrls,
  Buttons, ADODB;

type
  TDataPenerbit = class(TForm)
    Label1: TLabel;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label27: TLabel;
    IDPenerbit: TEdit;
    NamaPenerbit: TEdit;
    AlamatPenerbit: TEdit;
    New: TBitBtn;
    Simpan: TBitBtn;
    Cancel: TBitBtn;
    DBGrid1: TDBGrid;
    Kembali: TBitBtn;
    ADOCDataPenerbit: TADOConnection;
    DSPenerbit: TDataSource;
    ADOTDataPenerbit: TADOTable;
    Label7: TLabel;
    CariPenerbit: TEdit;
    Label10: TLabel;
    Edit: TBitBtn;
    Refresh: TBitBtn;
    HapusData: TBitBtn;
    Print: TBitBtn;
    procedure SimpanClick(Sender: TObject);
    procedure NewClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure KembaliClick(Sender: TObject);
    procedure CariPenerbitChange(Sender: TObject);
    procedure EditClick(Sender: TObject);
    procedure RefreshClick(Sender: TObject);
    procedure HapusDataClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure PrintClick(Sender: TObject);
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
  DataPenerbit: TDataPenerbit;

implementation

uses Unit9;

{$R *.dfm}


procedure TDataPenerbit.mati;
begin
IDPenerbit.Enabled:=false;
NamaPenerbit.Enabled:=false;
AlamatPenerbit.Enabled:=false;
end;

procedure TDataPenerbit.hidup;
begin
IDPenerbit.Enabled:=false;
NamaPenerbit.Enabled:=true;
AlamatPenerbit.Enabled:=true;
end;

procedure TDataPenerbit.kosong;
begin
IDPenerbit.Text:='';
NamaPenerbit.Text:='';
CariPenerbit.Text:='';
AlamatPenerbit.Text:='';
end;

procedure TDataPenerbit.awal;
begin
Simpan.Enabled:=false;
   New.Enabled:=true;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
  DBGrid1.Enabled:=true;
end;

procedure TDataPenerbit.SimpanClick(Sender: TObject);
begin
  ADOTDataPenerbit.Open;
  ADOTDataPenerbit.Append;
  ADOTDataPenerbit.FieldByName('IDPenerbit').AsString:=IDPenerbit.Text;
  ADOTDataPenerbit.FieldByName('NMPenerbit').AsString:=NamaPenerbit.Text;
  ADOTDataPenerbit.FieldByName('Alamat').AsString:=AlamatPenerbit.Text;
  ADOTDataPenerbit.Post;
  Showmessage('Data Berhasil di Simpan !!');
  kosong;
  mati;
  awal;
end;

procedure TDataPenerbit.NewClick(Sender: TObject);
var a:string;
    b:integer;
begin
  hidup;
  New.Enabled:=false;
  Edit.Enabled:=false;
  Simpan.Enabled:=true;
  Cancel.Enabled:=true;
  DBGrid1.Enabled:=false;
  ADOTDataPenerbit.Append;

  IDPenerbit.Enabled:=false;
  if ADOTDataPenerbit.Recordset.RecordCount>0 then
  begin
  ADOTDataPenerbit.Recordset.MoveFirst;
  b:=1;
  repeat
  a:='PN-'+format('%.2d',[b]);
  if (ADOTDataPenerbit.Locate('IDPenerbit',a,[])=false) then
  begin
  IDPenerbit.Text:=a;

  exit;
  end
  else
  begin
  ADOTDataPenerbit.Recordset.MoveNext;
  b:=b+1;
  end;
  until(b>ADOTDataPenerbit.Recordset.RecordCount+1);
  end
  else
  IDPenerbit.Text:='BL-'+format('%.3d',[1]);
end;

procedure TDataPenerbit.CancelClick(Sender: TObject);
begin
  mati;
  ADOTDataPenerbit.Cancel;
  New.Enabled:=true;
  Edit.Enabled:=false;
  Simpan.Enabled:=false;
  Cancel.Enabled:=false;
  kosong;
  awal;
end;

procedure TDataPenerbit.FormActivate(Sender: TObject);
begin
  ADOTDataPenerbit.Close;
  ADOTDataPenerbit.Open;
  mati;
  SImpan.Enabled:=false;
  Edit.Enabled:=false;
  Cancel.Enabled:=false;
end;

procedure TDataPenerbit.KembaliClick(Sender: TObject);
begin
kosong;
awal;
  DataPenerbit.Close;
end;

procedure TDataPenerbit.CariPenerbitChange(Sender: TObject);
begin
  ADOTDataPenerbit.Locate('NMPenerbit',CariPenerbit.Text,[LoPartialKey]);
end;

procedure TDataPenerbit.EditClick(Sender: TObject);
begin
  ADOTDataPenerbit.Edit;
  ADOTDataPenerbit.FieldByName('NMPenerbit').AsString:=NamaPenerbit.Text;
  ADOTDataPenerbit.FieldByName('Alamat').AsString:=AlamatPenerbit.Text;
  Showmessage('Data Berhasil di Edit !!');
  ADOTDataPenerbit.Post;
  kosong;
  awal;
end;

procedure TDataPenerbit.RefreshClick(Sender: TObject);
begin
  DataPenerbit.Hide;
New.Enabled:=true;
Simpan.Enabled:=false;
Edit.Enabled:=false;
Cancel.Enabled:=false;
CariPenerbit.Text:='';
kosong;
awal;
DataPenerbit.Show;
end;

procedure TDataPenerbit.HapusDataClick(Sender: TObject);
begin
if Messagedlg('Yakin Ingin Menghapus Data?', mtConfirmation,mbOkCancel,0)=mrOk then
  ADOTDataPenerbit.Delete;
  kosong;
  mati;
  awal;
end;

procedure TDataPenerbit.DBGrid1DblClick(Sender: TObject);
begin
  IDPenerbit.Enabled:=false;
  Simpan.Enabled:=false;
  New.Enabled:=false;
  Edit.Enabled:=true;
  Cancel.Enabled:=true;
  NamaPenerbit.Text:=ADOTDataPenerbit.FieldValues['NMPenerbit'];
  AlamatPenerbit.Text:=ADOTDataPenerbit.FieldValues['Alamat'];
  hidup;
end;

procedure TDataPenerbit.PrintClick(Sender: TObject);
begin
  LaporanPenerbit.QRDataPenerbit.Preview;
end;

end.
