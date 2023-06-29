unit Tabelwalikelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm2 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    dg1: TDBGrid;
    b6: TButton;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    l4: TLabel;
    l5: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    l6: TLabel;
    l7: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    l8: TLabel;
    Edit7: TEdit;
    c1: TComboBox;
    frxrprt1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
    procedure b6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  id: string;

implementation

{$R *.dfm}

{ TForm2 }

procedure TForm2.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
c1.text:= '';
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
Edit7.Clear;
end;

procedure TForm2.editenable;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
c1.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;
edit6.Enabled:= True;
edit7.Enabled:= True;
end;

procedure TForm2.posisiawal;
begin
editbersih;

edit1.Enabled:= false;
edit2.Enabled:= false;
c1.Enabled:= false;
edit3.Enabled:= false;
edit4.Enabled:= false;
edit5.Enabled:= false;
edit6.Enabled:= false;
edit7.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm2.b1Click(Sender: TObject);
begin
editbersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

editenable;
end;

procedure TForm2.b2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(c1.Text= '')or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')or (Edit6.Text ='') or (Edit7.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nik',Edit1.Text,[])) and (zqry1.Locate('nama',Edit2.Text,[])) then
begin
ShowMessage('DATA WALI KELAS SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_wali_kelas values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+c1.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+Edit6.Text+'","'+Edit7.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm2.b3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(c1.Text= '')or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')or (Edit6.Text ='') or (Edit7.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and (c1.Text = zqry1.Fields[3].AsString) and (Edit3.Text = zqry1.Fields[4].AsString) and (Edit4.Text = zqry1.Fields[5].AsString) and (Edit5.Text = zqry1.Fields[6].AsString) and (Edit6.Text = zqry1.Fields[7].AsString)and (Edit7.Text = zqry1.Fields[8].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_wali').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_wali_kelas set nik= "'+Edit1.Text+'",nama="'+Edit2.Text+'",jenis_kelamin="'+c1.Text+'",pendidikan="'+Edit3.Text+'",telp="'+Edit4.Text+'",matpel="'+Edit5.Text+'",alamat="'+Edit6.Text+'",status="'+Edit7.Text+'" where id_wali="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_wali_kelas');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm2.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_wali').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_wali_kelas where id_wali="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_wali_kelas');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm2.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm2.dg1CellClick(Column: TColumn);
begin
editenable;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;
Edit2.Text:= zqry1.FieldList[2].AsString;
c1.Text:= zqry1.FieldList[3].AsString;
Edit3.Text:= zqry1.FieldList[4].AsString;
Edit4.Text:= zqry1.FieldList[5].AsString;
Edit5.Text:= zqry1.FieldList[6].AsString;
Edit6.Text:= zqry1.FieldList[7].AsString;
Edit7.Text:= zqry1.FieldList[8].AsString;
end;

procedure TForm2.b6Click(Sender: TObject);
begin
frxrprt1.showreport();
end;

end.
