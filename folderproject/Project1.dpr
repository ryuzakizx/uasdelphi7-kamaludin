program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {dataAnggota},
  Unit3 in 'Unit3.pas' {DataPenerbit},
  Unit4 in 'Unit4.pas' {DataBuku},
  Unit5 in 'Unit5.pas' {BeliBuku},
  Unit6 in 'Unit6.pas' {LaporanDataAnggota},
  Unit7 in 'Unit7.pas' {LaporanPembelian},
  Unit8 in 'C:\Users\^ACER^\Downloads\Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {LaporanPenerbit},
  Unit10 in 'Unit10.pas' {LaporanDataBuku},
  Unit11 in 'Unit11.pas' {LaporanPembelianBuku},
  Unit12 in 'Unit12.pas' {Informasi};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TdataAnggota, dataAnggota);
  Application.CreateForm(TDataPenerbit, DataPenerbit);
  Application.CreateForm(TDataBuku, DataBuku);
  Application.CreateForm(TBeliBuku, BeliBuku);
  Application.CreateForm(TLaporanDataAnggota, LaporanDataAnggota);
  Application.CreateForm(TLaporanPembelian, LaporanPembelian);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TLaporanPenerbit, LaporanPenerbit);
  Application.CreateForm(TLaporanDataBuku, LaporanDataBuku);
  Application.CreateForm(TLaporanPembelianBuku, LaporanPembelianBuku);
  Application.CreateForm(TInformasi, Informasi);
  Application.Run;
end.
