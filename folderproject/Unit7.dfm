object LaporanPembelian: TLaporanPembelian
  Left = 244
  Top = 131
  Width = 1098
  Height = 568
  Caption = ':: TABEL PEMBELIAN'
  Color = clSkyBlue
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 256
    Top = 24
    Width = 545
    Height = 39
    Caption = 'TABEL PEMBELIAN TOKO BUKU OXYCARE KAMALUDIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -32
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 456
    Top = 402
    Width = 121
    Height = 25
    Caption = 'CARI ID PEMBELIAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label14: TLabel
    Left = 8
    Top = 507
    Width = 145
    Height = 16
    Caption = #169' Dibuat oleh Kamaludin'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 84
    Width = 1033
    Height = 293
    DataSource = DSLapBeli
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IDPembelian'
        Title.Alignment = taCenter
        Title.Caption = 'ID PEMBELIAN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NamaPembeli'
        Title.Alignment = taCenter
        Title.Caption = 'NAMA PEMBELI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Alamat'
        Title.Alignment = taCenter
        Title.Caption = 'ALAMAT'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TanggalBeli'
        Title.Alignment = taCenter
        Title.Caption = 'TANGGAL BELI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JudulBuku'
        Title.Alignment = taCenter
        Title.Caption = 'JUDUL BUKU'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'JumlahBeli'
        Title.Alignment = taCenter
        Title.Caption = 'JUMLAH BELI'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL PEMBELIAN'
        Visible = True
      end>
  end
  object GroupBox2: TGroupBox
    Left = 24
    Top = 384
    Width = 409
    Height = 89
    Caption = 'OPTION'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Refresh: TBitBtn
      Left = 64
      Top = 32
      Width = 129
      Height = 41
      Caption = 'REFRESH'
      TabOrder = 0
      OnClick = RefreshClick
      Glyph.Data = {
        42100000424D4210000000000000420000002800000020000000200000000100
        20000300000000100000000000000000000000000000000000000000FF0000FF
        0000FF0000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000996633059F533B4AA4593D9AA75F40DEA258
        3DF69F543BFC9E533AFDA3583CF6A76042DDA1593D9B9D503849996633050000
        00000000000000000000AA552B06A55C3F96A3593DF6A0563D79000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000009F504010A55A3E88A2583DF6B06A44FBC6884AFFD89F50FFE3AD
        54FFE9B556FFE9B556FFE3AD54FFD79D4FFFC6884AFFB06943FBA2583CF5A259
        3C879D4E3B0D00000000A75C3F96B56F44FEC8894AFFA76042C0000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009F543A58A2583CF5BB7947FEDFA753FFDEA752FFC88B53FFB4734CFFA861
        43FFA1563DFFA0563CFFA65E42FFB4734CFFC58851FFDDA752FFDFA753FFBB78
        47FEA2573DF59F543C55A3593DF6E3AD54FFDBA251FFA75E40E7000000000000
        0000000000000000000000000000000000000000000000000000AA555503A55A
        3DA2A96140FBDAA151FFDAA154FFB3714BFFA86246FFC7936DFFDFB889FFEFD1
        9DFFF7DFA8FFF8DFA9FFEED19DFFDFB889FFC7936DFFA76145FFB2704BFFDBA3
        54FFD9A151FFA75F40FC9D5139FFEBB757FFE6B155FFA1543BFBFF0000010000
        0000000000000000000000000000000000000000000080404004A45C3EBCB36D
        43FEE5AF56FFC08250FFA86145FFD8AE81FFF3D7A3FFD4A77DFFB87B5AF4A55F
        44F49F553BFAA0563CFAA66045F1B97E5DF5D6AA7FFFF5DBA6FFD8AD82FFD3A5
        76FFEFC36EFFE7B155FFC98B4AFFEBB757FFEBB757FFA4593EFBA155391B0000
        00000000000000000000000000000000000000000000A65C3EA4B46F45FDE5AF
        54FFB2704BFFBD835FFFF1D6A1FFCB9A72F9A1573EF6A35A3FB99D51385B9A53
        3B2BAA553909A15136139D4E3B279E513A61A75E44B0E2BC8D9FF9E1AAF5F9E1
        AAFFF9E0AAFFE5B872FFC98A49FFE1A953FFEBB757FFB06B44FB9E513A420000
        0000000000000000000000000000000000009D533B56A96140FBE5B055FFB16D
        49FFC6926CFFEED09CFFAB684AF6A35A40BC9E533C2200000000000000000000
        000000000000000000000000000000000000AA552B06A2573E8FA2593FF3CB99
        71FEF9E1AAFFA76045F4A3593DB1A86040FCEBB757FFBC7A47FE9D5138680000
        000000000000000000000000000000000000B16D47DFDBA251FFBF804FFFBD82
        60FFEED09CFFA45C42F6A1563D7A000000000000000000000000000000000000
        000000000000000000000000000000000000A2593E8FB57857F5F0D29EFFF9E1
        AAFFF9E1AAFFA56044F5A1543CAAA76041FAEBB757FFC7894AFFA3583F990000
        0000000000000000000000000000B6764D38ECBB5EFCDBA253FFA86246FFF1D6
        A2FFAA674AF6A2563D7600000000000000000000000000000000000000000000
        000000000000000000000000000000000000A1573EEFD0A077FFE6C393FFF3D9
        A3FFF9E1AAFFECCC9AFFD0A077FFEBC892FFECB95CFFD3984DFFA96041CF0000
        0000000000000000000099663305A1573CF7E3AD54FFB26F4AFFD9AE83FFCA98
        71FBA1593FBBFF00000100000000000000000000000000000000000000000000
        0000000000000000000000000000000000009F533C78A35C42B5A35A41DD9F54
        3CF8A2593FF6AF6E4FEFC08663F5CFA077FFD7A669FFD3984EFFA55B3FF00000
        000000000000000000009E51394CAC6542FCDFA854FFA86346FFF2D7A2FFA056
        3DF89F5038200000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00009B52371C9E513A429D513868A1573E93A55C41C7A55B3FF0A0573CED0000
        00000000000000000000A2583F9DC68749FFC88C53FFC7946EFFD0A178FDA259
        41B4000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A75E41E0D69C4FFFEAC079FFEFD29DFFA35C42F49F4F
        392D000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A2573CF7E1A953FFEBC482FFB06E4FF4A25941920000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000009E533AFDB57245FDA2583EF5A2593D81FF0000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000994D33149E523A549E50
        3A6600000000000000009C5239679C5139559E553D1500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF000001A45D3F86A2593EF7B67958F19E53
        3AFB000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A75D3F9AAF6A43FDE8BA6FFFEDCD9BFFA056
        3DF0000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000009F4F392DA55C3FFBE2AC53FFEBC27BFFE0BA8BFFA35B
        41D3000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000A55E40BCC98B4BFFC18047FFCB9769FFCC9B73FBA057
        3C96000000000000000000000000A0543CE9A2593FE8A65F41CCA45940989D51
        38689E513A429B52371C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000009B4D3621A2593CFAE5B056FFA75D3DFFE9C695FFAA674AF19C52
        3A4B000000000000000000000000A2593FE8DDB588FFD8A76CFFC78949FFBD7A
        47FEB06B44FBA45A3DFBA1543BFBA75E40E7A76042C0A0563D79000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000FF000001A55C40C4C5864AFFCF934CFFB2704BFFEFD19DFF9F563DF29966
        3305000000000000000000000000A55C41C3DDB587FFF8DFA6FFE1AC5AFFC98A
        49FFE1A953FFEBB757FFE6B155FFDBA251FFC8894AFFA3593DF6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000A25A3C7CAD6843FDE5B155FFA75D3DFFE3BD8DFFF8E0A9DFAA604A2D0000
        0000000000000000000000000000A0563E94CFA076FEF9E1AAFFA76043F6A359
        3EB2A86040FCEBB757FFEBB757FFE3AC54FFB56F44FEA55C3F96000000000000
        000000000000000000000000000000000000000000000000000000000000A259
        3F81A65E3FFCE2AA53FFB87443FFC1865DFFE6C393FFAB664AC8000000000000
        00000000000000000000000000009D513868BE8663F5F9E1AAFFA56044F5A155
        3DABA86040FCEBB757FFC48448FFA45B3DFAA55C3F96AA552B06000000000000
        000000000000000000000000000000000000000000009E533C22A65D41C5AB65
        41FDE3AC54FFC07F46FFB06C49FFF1D5A1FFA76245F39D533B56000000000000
        00000000000000000000000000009E513A42AF6D4FEFF9E1AAFFECCC9AFFD0A0
        77FFE7BC79FFEBB758FFEBB757FFEBB758FFDFAE66D8A96243BB9D5038609A51
        36269F5040109F6040089E4F372A9E503959A65E41C5A2583DFCC7884AFFE6B0
        55FFB87544FFAF6C49FFF1D5A0FFB37454F2A1563C9A00000000000000000000
        0000000000000000000000000000A155391BA25A41F5F9E1AAFFF9E1AAFFD1A2
        78FFF4D9A4FFF5D591FFCC9150FFCF934CFFE8B555FFCE904BFFB77446FEA760
        3FFAA2583CFC9F543AFDA96240FAB67346FDCE924CFFE6B055FFCF934CFFA75E
        3EFFC0855CFFF1D6A1FFB27354F3A1583FB68040400400000000000000000000
        0000000000000000000000000000FF0000019F543CF8F3D9A3FFF9E1AAFF9D51
        39FFA76045F1E6C393FFE5C08EFFB16E4BFFA75E3EFFC28147FFD69B4FFFE3AD
        54FFEAB756FFEAB657FFE3AC54FFD69B4FFFC28047FFA75E3EFFB16F4BFFE2BC
        8AFFE6C493FFA86146F4A1563D9BAA5555030000000000000000000000000000
        000000000000000000000000000000000000A35A41DDE6C393FFEFD19DFFA157
        3EEF9D503856A0573DF1BE8561F4ECCC9AFFE9C695FFC89267FFB3704BFFA55D
        3FFF9E523AFF9E5239FFA55D3FFFB3714BFFC89368FFE9C696FFEBCB99FFBE84
        62F3A1563DEF9F543A5800000000000000000000000000000000000000000000
        000000000000000000000000000000000000A35C42B5D0A177FFB57857F5A257
        3E8F000000009955330F9E543A83A0563EF0AE6D4FF0CD9F75FCE3C090FFF1D4
        9FFFF9E1AAFFF8DFA9FFF0D29FFFE2BE8FFFCE9F75FCAE6C4DEEA1573DF1A054
        3C839F5040100000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000009F543C77A1573EEFA2573E8FAA55
        2B06000000000000000000000000AA552B069C523A4BA0563D97A35B41D5A055
        3CF29E5339FD9D5239FDA0563EF0A25A40D4A25A3E979C523A4B996633050000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000}
    end
    object bbprint: TBitBtn
      Left = 216
      Top = 32
      Width = 129
      Height = 41
      Caption = 'PRINT'
      TabOrder = 1
      OnClick = bbprintClick
      Glyph.Data = {
        F6070000424DF60700000000000036040000280000001E0000001E0000000100
        080000000000C0030000C40E0000C40E00000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF09090909090909090909090909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF09090909090909090909090909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF090909E1E1E1E1E1E1E1D90909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF090909F4EBEBEBEBEBEBEB0909090909FFFFFFFFFFFFFF0000FFFFFFFF5249
        0AEC0909EBEBEBEBEBEBEBEBEBEB0909EC0A4952F6FFFFFF0000FFFFFF5B5252
        52F40909E2E1E1E1E1E1E1E1E1E1EB09F45252525BFFFFFF0000FFFFFF525252
        52F40909090909090909090909090909F452525252FFFFFF0000FFFFFF525252
        0AEAF2EAEAEAEAEAEAEAEAEAEAEAEAF2EA0A525252FFFFFF0000FFFFFF525252
        495151515151515151515151515151515149525252FFFFFF0000FFFFFF525252
        525252525252525252525252525252525252525252FFFFFF0000FFFFFF525252
        525252525252525252525252525252525252525252FFFFFF0000FFFFFF5B5B5B
        5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5BFFFFFF0000FFFFFF5B9B9B
        9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B5BFFFFFF0000FFFFFF5B5B9B
        9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B5B5B5BFFFFFF0000FFFFFF5B5B9B
        9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B5BB89B5BFFFFFF0000FFFFFF9B5B9B
        9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9BA25B9BFFFFFF0000FFFFFFF65B52
        9B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B9B525BF6FFFFFF0000FFFFFFFFFFFF
        4AF40909090909090909090909090909F44AFFFFFFFFFFFF0000FFFFFFFFFFFF
        49F40909090909090909090909090909F449FFFFFFFFFFFF0000FFFFFFFFFFFF
        FF09090909090909090909090909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF09090909090909090909090909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF09090909090909090909090909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FF09090909090909090909090909090909FFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    end
  end
  object BitBtn1: TBitBtn
    Left = 959
    Top = 474
    Width = 114
    Height = 41
    Caption = 'KEMBALI'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BitBtn1Click
    Glyph.Data = {
      F6070000424DF60700000000000036040000280000001E0000001E0000000100
      080000000000C0030000C40E0000C40E00000001000000000000000000000000
      80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
      A6000020400000206000002080000020A0000020C0000020E000004000000040
      20000040400000406000004080000040A0000040C0000040E000006000000060
      20000060400000606000006080000060A0000060C0000060E000008000000080
      20000080400000806000008080000080A0000080C0000080E00000A0000000A0
      200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
      200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
      200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
      20004000400040006000400080004000A0004000C0004000E000402000004020
      20004020400040206000402080004020A0004020C0004020E000404000004040
      20004040400040406000404080004040A0004040C0004040E000406000004060
      20004060400040606000406080004060A0004060C0004060E000408000004080
      20004080400040806000408080004080A0004080C0004080E00040A0000040A0
      200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
      200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
      200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
      20008000400080006000800080008000A0008000C0008000E000802000008020
      20008020400080206000802080008020A0008020C0008020E000804000008040
      20008040400080406000804080008040A0008040C0008040E000806000008060
      20008060400080606000806080008060A0008060C0008060E000808000008080
      20008080400080806000808080008080A0008080C0008080E00080A0000080A0
      200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
      200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
      200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
      2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
      2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
      2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
      2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
      2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
      2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
      2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070808080808
      0808080808080808080808080808080808080808080808070000086060606060
      60606060606060606060606060606060606060606060600800000860A8A8A8A8
      606060606060606060606068A8606060A8A8A8A8A8A8600800000860A8A860A9
      FFFFFFFFFFFFFFFFFFFFFF606008FFF460A8A8A8A8A8600800000860A8A8A860
      A9FFFFFFFFFFFFFFFFFFFFFFB3B3FFFFF460A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFFFFFFFFFFFFFF56060FFFFF660A8A8A8A8600800000860A8A8A860
      60F6FFFFFFFFFFFFFFFFFF6060F6FFFFF660A8A8A8A8600800000860A8A860F5
      F4FFFFFFFFFFFFFFFFFFA960B3FFFFFFF660A8A8A8A8600800000860A8A860F4
      606060606060A9FFFFF46060FFFFFFFFF660A8A8A8A8600800000860A8A86008
      B3B2B2B2AA60A9FFF6606008FFFFFFFFF660A8A8A8A8600800000860A8A8A8A8
      68FFFFFFF660A9FFA960B3FFFFFFFFFFF660A8A8A8A8600800000860A8A8A8A8
      60F6FFFFF660AAF56060FFFFFFFFFFFFF660A8A8A8A8600800000860A8A8A8A8
      60F6FFFFF660A9606008FFFFFFFFFFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFF660A860A9FFFFFFFFFFFFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFF60A8A860F6FFFFFFFFFFFFF660A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFF560A860A8FFFF0860606060A8A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFFFA860A860F4FFA960F4F4B360A8A8A8A8600800000860A8A8A8A8
      60F6B2B2FFFFF660A8A8600860A9FFFFF660A8A8A8A8600800000860A8A8A8A8
      60FF6860F6FFFFB360A8A86060F5FFFF0860A8A8A8A8600800000860A8A8A8A8
      60F60860A9FFFFFFA8A8606060FFFFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFB260AAB3B3AA60A908F6FFFFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFF6060606060A9F66060B3FFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFF6F6F6F6F6FF6068A86008FF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFFFFFFFFFFF60A8A86008FF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFFFFFFFFFFFF56060A9FFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFFFFFFFFFFFFFFFF6FFFFFF0860A8A8A8A8600800000860A8A8A8A8
      60F6FFFFFFFFFFFFFFFFFFFFFFFFFFFFF660A8A8A8A8600800000860A8A8A8A8
      A860606060606060606060606060606060A8A8A8A8A860080000086060606060
      6060606060606060606060606060606060606060606060080000070808080808
      0808080808080808080808080808080808080808080808070000}
  end
  object CariID: TEdit
    Left = 584
    Top = 402
    Width = 177
    Height = 28
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Agency FB'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnChange = CariIDChange
  end
  object ADOCLapBeli: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\BORLAND\UASCLIEN' +
      'T-KAMALUDIN\DB_UASCLIENT.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 928
    Top = 24
  end
  object ADOTLapBeli: TADOTable
    Active = True
    Connection = ADOCLapBeli
    CursorType = ctStatic
    TableName = 'TotalBeli'
    Left = 1008
    Top = 24
  end
  object DSLapBeli: TDataSource
    DataSet = ADOTLapBeli
    Left = 968
    Top = 24
  end
end
