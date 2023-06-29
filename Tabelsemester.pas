unit Tabelsemester;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ComCtrls;

type
  TForm8 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    dg1: TDBGrid;
    b6: TButton;
    c1: TComboBox;
    c2: TComboBox;
    Edit3: TEdit;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    zqry2: TZQuery;
    zqry3: TZQuery;
    l6: TLabel;
    l8: TLabel;
    l9: TLabel;
    c3: TComboBox;
    c4: TComboBox;
    zqry4: TZQuery;
    zqry5: TZQuery;
    zqry6: TZQuery;
    l7: TLabel;
    c5: TComboBox;
    dtp1: TDateTimePicker;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure FormCreate(Sender: TObject);
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
  Form8: TForm8;
  id : string;

implementation

{$R *.dfm}

procedure TForm8.editbersih;
begin
c1.text:= '';
c2.text:= '';
c3.text:= '';
c4.text:= '';
c5.text:= '';
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm8.editenable;
begin
c1.Enabled:= True;
c2.Enabled:= True;
c3.Enabled:= True;
c4.Enabled:= True;
c5.Enabled:= True;
dtp1.Enabled:=True;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
end;

procedure TForm8.FormCreate(Sender: TObject);
begin
zqry2.First;
while not zqry2.Eof do
begin
  c1.items.add(zqry2.fieldbyname('siswa_id').asstring);
  zqry2.Next;
end;
zqry3.First;
while not zqry3.Eof do
begin
  c2.items.add(zqry3.fieldbyname('poin_id').asstring);
  zqry3.Next;
end;
zqry4.First;
while not zqry4.Eof do
begin
  c3.items.add(zqry4.fieldbyname('wali_id').asstring);
  zqry4.Next;
end;
zqry5.First;
while not zqry5.Eof do
begin
  c4.items.add(zqry5.fieldbyname('ortu_id').asstring);
  zqry5.Next;
end;
zqry6.First;
while not zqry6.Eof do
begin
  c5.items.add(zqry6.fieldbyname('kelas_id').asstring);
  zqry6.Next;
end;
end;

procedure TForm8.posisiawal;
begin
editbersih;

c1.Enabled:= false;
c2.Enabled:= false;
c3.Enabled:= false;
c4.Enabled:= false;
c5.Enabled:= false;
dtp1.Enabled:= False;
edit1.Enabled:= false;
edit2.Enabled:= false;
edit3.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm8.b1Click(Sender: TObject);
begin
editbersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

editenable;
end;

procedure TForm8.b2Click(Sender: TObject);
begin
if (c1.Text= '')or (c2.Text= '') or (c3.Text= '')or (c4.Text= '') or (c5.Text= '') or (Edit1.Text= '')or (Edit2.Text ='') or (Edit3.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_semester values (null,"'+c1.Text+'","'+c2.Text+'","'+c3.Text+'","'+c4.Text+'","'+c5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm8.b3Click(Sender: TObject);
begin
if (c1.Text= '')or (c2.Text= '') or (c3.Text= '') or(c4.Text= '') or(c5.Text= '') or (Edit1.Text= '')or (Edit2.Text ='') or (Edit3.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (c1.Text = zqry1.Fields[1].AsString) and (c2.Text = zqry1.Fields[2].AsString)and (c3.Text = zqry1.Fields[3].AsString)and (c4.Text = zqry1.Fields[4].AsString)and (c5.Text = zqry1.Fields[5].AsString) and (Edit1.Text = zqry1.Fields[6].AsString) and (Edit2.Text = zqry1.Fields[7].AsString) and (Edit3.Text = zqry1.Fields[8].AsString)and (Edit3.Text = zqry1.Fields[9].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_semester').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_semester set id_siswa="'+c1.Text+'",id_poin="'+c2.Text+'",id_wali="'+c3.Text+'",id_ortu="'+c4.Text+'",id_kelas="'+c5.Text+'",tanggal= "'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",semester="'+Edit1.Text+'",status="'+Edit2.Text+'",tingkat_kelas="'+Edit3.Text+'" where id_semester="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm8.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_semester').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_semester where id_semester="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_semester');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm8.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm8.dg1CellClick(Column: TColumn);
begin
editenable;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
c1.Text:= zqry1.FieldList[1].AsString;
c2.Text:= zqry1.FieldList[2].AsString;
c3.Text:= zqry1.FieldList[3].AsString;
c4.Text:= zqry1.FieldList[4].AsString;
c5.Text:= zqry1.FieldList[5].AsString;
dtp1.Date:=Form8.zqry1.Fields[6].AsDateTime;
Edit1.Text:= zqry1.FieldList[7].AsString;
Edit2.Text:= zqry1.FieldList[8].AsString;
Edit3.Text:= zqry1.FieldList[9].AsString;
end;

procedure TForm8.b6Click(Sender: TObject);
begin
frxReport1.showreport();
end;

end.
