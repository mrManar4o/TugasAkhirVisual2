object Form8: TForm8
  Left = 291
  Top = 145
  Width = 752
  Height = 613
  Caption = 'TABEL SEMESTER'
  Color = clLime
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 376
    Top = 48
    Width = 54
    Height = 16
    Caption = 'TANGGAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 376
    Top = 88
    Width = 63
    Height = 16
    Caption = 'SEMESTER'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 64
    Top = 48
    Width = 56
    Height = 16
    Caption = 'ID SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 64
    Top = 88
    Width = 44
    Height = 16
    Caption = 'ID POIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 376
    Top = 128
    Width = 52
    Height = 16
    Caption = 'STATUS '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 376
    Top = 168
    Width = 91
    Height = 16
    Caption = 'TINGKAT KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 64
    Top = 128
    Width = 46
    Height = 16
    Caption = 'ID WALI'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l9: TLabel
    Left = 64
    Top = 168
    Width = 49
    Height = 16
    Caption = 'ID ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 64
    Top = 208
    Width = 52
    Height = 16
    Caption = 'ID KELAS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 512
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 512
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object b1: TButton
    Left = 56
    Top = 320
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 160
    Top = 320
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 264
    Top = 320
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 368
    Top = 320
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 472
    Top = 320
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 6
    OnClick = b5Click
  end
  object dg1: TDBGrid
    Left = 56
    Top = 380
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
    Left = 576
    Top = 320
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 8
    OnClick = b6Click
  end
  object c1: TComboBox
    Left = 200
    Top = 48
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Items.Strings = (
      '')
  end
  object c2: TComboBox
    Left = 200
    Top = 88
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Items.Strings = (
      '')
  end
  object Edit3: TEdit
    Left = 512
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object c3: TComboBox
    Left = 200
    Top = 128
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      '')
  end
  object c4: TComboBox
    Left = 200
    Top = 168
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Items.Strings = (
      '')
  end
  object c5: TComboBox
    Left = 200
    Top = 208
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 14
    Items.Strings = (
      '')
  end
  object dtp1: TDateTimePicker
    Left = 512
    Top = 48
    Width = 161
    Height = 21
    Date = 45105.542622997690000000
    Time = 45105.542622997690000000
    TabOrder = 15
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 512
    Top = 208
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'database_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'C:\semester 4\visual2\tugas akhir\libmysql.dll'
    Left = 384
    Top = 208
  end
  object zqry1: TZQuery
    Connection = con1
    SQL.Strings = (
      'select * from tbl_semester')
    Params = <>
    Left = 384
    Top = 256
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_siswa')
    Params = <>
    Left = 512
    Top = 272
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_poin')
    Params = <>
    Left = 560
    Top = 208
  end
  object zqry4: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_walikelas')
    Params = <>
    Left = 560
    Top = 272
  end
  object zqry5: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_ortu')
    Params = <>
    Left = 608
    Top = 248
  end
  object zqry6: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_kls')
    Params = <>
    Left = 648
    Top = 248
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxdbdtst1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 448
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DataSet = frxDBDataset1
    DataSetName = 'frxdbdtst1'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45105.728251712960000000
    ReportOptions.LastChange = 45105.728251712960000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 448
    Top = 256
    Datasets = <>
    Variables = <>
    Style = <>
  end
end
