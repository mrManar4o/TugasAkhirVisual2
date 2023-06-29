object Form6: TForm6
  Left = 256
  Top = 124
  Width = 907
  Height = 652
  Caption = 'Tabel Siswa'
  Color = clYellow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 56
    Top = 88
    Width = 20
    Height = 16
    Caption = 'NIS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 56
    Top = 136
    Width = 28
    Height = 16
    Caption = 'NISN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 384
    Top = 88
    Width = 86
    Height = 16
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 56
    Top = 176
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 56
    Top = 216
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 56
    Top = 256
    Width = 86
    Height = 16
    Caption = 'TEMPAT LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 56
    Top = 296
    Width = 92
    Height = 16
    Caption = 'TANGGAL LAHIR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 384
    Top = 128
    Width = 48
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l9: TLabel
    Left = 384
    Top = 168
    Width = 23
    Height = 13
    Caption = 'TELP'
  end
  object l10: TLabel
    Left = 384
    Top = 208
    Width = 13
    Height = 13
    Caption = 'HP'
  end
  object l11: TLabel
    Left = 384
    Top = 248
    Width = 38
    Height = 13
    Caption = 'STATUS'
  end
  object l12: TLabel
    Left = 288
    Top = 16
    Width = 159
    Height = 33
    Caption = 'FORM SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 192
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 192
    Top = 136
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 56
    Top = 344
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 160
    Top = 344
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 264
    Top = 344
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 368
    Top = 344
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 467
    Top = 344
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = b5Click
  end
  object dg1: TDBGrid
    Left = 59
    Top = 416
    Width = 617
    Height = 169
    DataSource = ds1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object b6: TButton
    Left = 571
    Top = 344
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 8
    OnClick = b6Click
  end
  object Edit3: TEdit
    Left = 192
    Top = 176
    Width = 161
    Height = 21
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 192
    Top = 216
    Width = 161
    Height = 21
    TabOrder = 10
  end
  object Edit5: TEdit
    Left = 192
    Top = 256
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object Edit6: TEdit
    Left = 520
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 12
  end
  object c1: TComboBox
    Left = 520
    Top = 88
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      'L'
      'P')
  end
  object Edit7: TEdit
    Left = 520
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 14
  end
  object Edit8: TEdit
    Left = 520
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 15
  end
  object Edit9: TEdit
    Left = 520
    Top = 248
    Width = 161
    Height = 21
    TabOrder = 16
  end
  object dtp1: TDateTimePicker
    Left = 192
    Top = 296
    Width = 161
    Height = 21
    Date = 45105.552468171300000000
    Time = 45105.552468171300000000
    TabOrder = 17
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 728
    Top = 328
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    HostName = 'localhost'
    Port = 3306
    Database = 'database_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\semester 4\visual2\tugas akhir\libmysql.dll'
    Left = 728
    Top = 232
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from table_siswa')
    Params = <>
    Left = 728
    Top = 280
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DataSet = frxdbdtst1
    DataSetName = 'frxdbdtst1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45105.745186273150000000
    ReportOptions.LastChange = 45105.745186273150000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 800
    Top = 296
    Datasets = <>
    Variables = <>
    Style = <>
  end
  object frxdbdtst1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 800
    Top = 256
  end
end
