unit MainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, jpeg;

type
  TFormMenu = class(TForm)
    mm1: TMainMenu;
    MainMr1: TMenuItem;
    abelKelas1: TMenuItem;
    Hubungan1: TMenuItem;
    WaliKelas1: TMenuItem;
    Ortu1: TMenuItem;
    Semester1: TMenuItem;
    POin1: TMenuItem;
    Siswa1: TMenuItem;
    User1: TMenuItem;
    img1: TImage;
    procedure abelKelas1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure WaliKelas1Click(Sender: TObject);
    procedure Ortu1Click(Sender: TObject);
    procedure Semester1Click(Sender: TObject);
    procedure POin1Click(Sender: TObject);
    procedure Siswa1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormMenu: TFormMenu;

implementation

uses Tabelkelas, Tabelpoin, Tabeluser, Tabelsiswa, Tabelhubungan,
  Tabelsemester, Tabelwalikelas, Tabelortu;

{$R *.dfm}

procedure TFormMenu.abelKelas1Click(Sender: TObject);
begin
  Form1.ShowModal;
end;

procedure TFormMenu.Hubungan1Click(Sender: TObject);
begin
 form7.ShowModal;
end;

procedure TFormMenu.WaliKelas1Click(Sender: TObject);
begin
   form2.ShowModal;
end;

procedure TFormMenu.Ortu1Click(Sender: TObject);
begin
  form3.ShowModal;
end;

procedure TFormMenu.Semester1Click(Sender: TObject);
begin
 form8.ShowModal;
end;

procedure TFormMenu.POin1Click(Sender: TObject);
begin
  form4.ShowModal;
end;

procedure TFormMenu.Siswa1Click(Sender: TObject);
begin
  form6.ShowModal;
end;

procedure TFormMenu.User1Click(Sender: TObject);
begin
  Form5.ShowModal;
end;

end.
