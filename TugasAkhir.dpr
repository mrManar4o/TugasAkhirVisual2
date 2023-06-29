program TugasAkhir;

uses
  Forms,
  MainMenu in 'MainMenu.pas' {FormMenu},
  Tabelhubungan in 'Tabelhubungan.pas' {Form7},
  Tabelkelas in 'Tabelkelas.pas' {Form1},
  Tabelpoin in 'Tabelpoin.pas' {Form4},
  Tabelsemester in 'Tabelsemester.pas' {Form8},
  Tabelsiswa in 'Tabelsiswa.pas' {Form6},
  Tabeluser in 'Tabeluser.pas' {Form5},
  Tabelwalikelas in 'Tabelwalikelas.pas' {Form2},
  Tabelortu in 'Tabelortu.pas' {Form3};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormMenu, FormMenu);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.Run;
end.
