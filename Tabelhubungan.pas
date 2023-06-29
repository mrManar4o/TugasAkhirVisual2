unit Tabelhubungan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, frxClass, frxDBSet, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls, Grids, DBGrids;

type
  TForm7 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
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
    ds1: TDataSource;
    con1: TZConnection;
    zqry1: TZQuery;
    zqry2: TZQuery;
    zqry3: TZQuery;
    l5: TLabel;
    Edit3: TEdit;
    frxReport1: TfrxReport;
    frxdbdtst1: TfrxDBDataset;
    procedure editbersih;
    procedure editenable;
    procedure posisiawal;
    procedure FormCreate(Sender: TObject);
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
  Form7: TForm7;
  id : string;

implementation

{$R *.dfm}

{ TForm7 }

procedure TForm7.editbersih;
begin
c1.text:= '';
c2.text:= '';
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
end;

procedure TForm7.editenable;
begin
c1.Enabled:= True;
c2.Enabled:= True;
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
end;

procedure TForm7.posisiawal;
begin
editbersih;

c1.Enabled:= false;
c2.Enabled:= false;
edit1.Enabled:= false;
edit2.Enabled:= false;
edit3.Enabled:= false;


b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm7.FormCreate(Sender: TObject);
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
  c2.items.add(zqry3.fieldbyname('ortu_id').asstring);
  zqry3.Next;
end;
end;

procedure TForm7.b1Click(Sender: TObject);
begin
editbersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

editenable;
end;

procedure TForm7.b2Click(Sender: TObject);
begin
if (c1.Text= '')or (c2.Text= '') or (Edit1.Text= '')or (Edit2.Text ='') or (Edit3.Text ='') then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_hubungan values (null,"'+c1.Text+'","'+c2.Text+'","'+Edit1.Text+'","'+Edit2.Text+'","'+Edit3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm7.b3Click(Sender: TObject);
begin
if (c1.Text= '')or (c2.Text= '') or (Edit1.Text= '')or (Edit2.Text ='') or (Edit3.Text ='')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (c1.Text = zqry1.Fields[1].AsString) and (c2.Text = zqry1.Fields[2].AsString) and (Edit1.Text = zqry1.Fields[3].AsString) and (Edit2.Text = zqry1.Fields[4].AsString) and (Edit3.Text = zqry1.Fields[5].AsString) then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_hub').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tabel_hubungan set id_siswa="'+c1.Text+'",id_ortu="'+c2.Text+'",status_hubungan= "'+Edit1.Text+'",keterangan="'+Edit2.Text+'" ,status_ortu="'+Edit3.Text+'" where id_hub="'+id+'"');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_hubungan');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm7.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_hub').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tabel_hubungan where id_hub="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_hubungan');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm7.b5Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm7.dg1CellClick(Column: TColumn);
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
Edit1.Text:= zqry1.FieldList[3].AsString;
Edit2.Text:= zqry1.FieldList[4].AsString;
Edit3.Text:= zqry1.FieldList[5].AsString;
end;

procedure TForm7.b6Click(Sender: TObject);
begin
frxReport1.showreport();
end;

end.
