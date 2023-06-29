unit Tabelsiswa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids,
  ComCtrls;

type
  TForm6 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    l5: TLabel;
    l6: TLabel;
    l7: TLabel;
    l8: TLabel;
    l9: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    dg1: TDBGrid;
    b6: TButton;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    c1: TComboBox;
    Edit7: TEdit;
    Edit8: TEdit;
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    l10: TLabel;
    Edit9: TEdit;
    l11: TLabel;
    l12: TLabel;
    dtp1: TDateTimePicker;
    frxReport1: TfrxReport;
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
  Form6: TForm6;
  id :string;

implementation

{$R *.dfm}

{ TForm6 }

procedure TForm6.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
Edit6.Clear;
c1.text:= '';
Edit7.Clear;
Edit8.Clear;
Edit9.Clear;
end;

procedure TForm6.editenable;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;
dtp1.Enabled:=True;
edit6.Enabled:= True;
c1.Enabled:= True;
edit7.Enabled:= True;
edit8.Enabled:= True;
edit9.Enabled:= True;
end;

procedure TForm6.posisiawal;
begin
editbersih;

edit1.Enabled:= false;
edit2.Enabled:= false;
edit3.Enabled:= false;
edit4.Enabled:= false;
edit5.Enabled:= false;
dtp1.Enabled:=false;
edit6.Enabled:= false;
c1.Enabled:= false;
edit7.Enabled:= false;
edit8.Enabled:= false;
edit9.Enabled:= false;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm6.b1Click(Sender: TObject);
begin
editbersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

editenable;
end;

procedure TForm6.b2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')or (Edit6.Text ='') or (c1.Text= '')or (Edit7.Text= '') or (Edit8.Text= '') or (Edit9.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nis',Edit1.Text,[])) and (zqry1.Locate('nisn',Edit2.Text,[])) then
begin
ShowMessage('DATA SISWA SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into table_siswa values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'","'+Edit4.Text+'","'+Edit5.Text+'","'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'","'+Edit6.Text+'","'+c1.Text+'","'+Edit7.Text+'","'+Edit8.Text+'","'+Edit9.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from table_siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm6.b3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or (Edit3.Text= '')or (Edit4.Text ='') or (Edit5.Text= '')or (Edit6.Text ='') or (c1.Text= '')or (Edit7.Text= '') or (Edit8.Text= '')or (Edit9.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString) and (Edit2.Text = zqry1.Fields[2].AsString) and  (Edit3.Text = zqry1.Fields[3].AsString) and (Edit4.Text = zqry1.Fields[4].AsString) and (Edit5.Text = zqry1.Fields[5].AsString) and (Edit6.Text = zqry1.Fields[6].AsString)and (c1.Text = zqry1.Fields[7].AsString) and (Edit7.Text = zqry1.Fields[8].AsString) and (Edit8.Text = zqry1.Fields[9].AsString) and (Edit9.Text = zqry1.Fields[10].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_siswa').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update table_siswa set nis= "'+Edit1.Text+'",nisn="'+Edit2.Text+'",nama="'+Edit3.Text+'",nik="'+Edit4.Text+'",tempat_lahir="'+Edit5.Text+'",tgl_lahir="'+FormatDateTime('yyyy-mm-dd',dtp1.Date)+'",jenis_kelamin="'+c1.Text+'",alamat="'+Edit6.Text+'",telp="'+Edit7.Text+'",hp="'+Edit8.Text+'",status="'+Edit9.Text+'" where id_siswa="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from table_siswa');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm6.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_siswa').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from table_siswa where id_siswa="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from table_siswa');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm6.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm6.dg1CellClick(Column: TColumn);
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
Edit3.Text:= zqry1.FieldList[3].AsString;
Edit4.Text:= zqry1.FieldList[4].AsString;
Edit5.Text:= zqry1.FieldList[5].AsString;
dtp1.Date:=Form6.zqry1.Fields[6].AsDateTime;
Edit6.Text:= zqry1.FieldList[7].AsString;
c1.Text:= zqry1.FieldList[8].AsString;
Edit7.Text:= zqry1.FieldList[9].AsString;
Edit8.Text:= zqry1.FieldList[10].AsString;
Edit9.Text:= zqry1.FieldList[11].AsString;
end;

procedure TForm6.b6Click(Sender: TObject);
begin
frxReport1.showreport();
end;

end.
