unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, ExtCtrls, Grids, DBGrids, DB, ADODB, ComCtrls,
  Mask, DBCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Panel1: TPanel;
    MainMenu1: TMainMenu;
    menu1: TMenuItem;
    menu2: TMenuItem;
    menu3: TMenuItem;
    menu4: TMenuItem;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    ADOQuery1dktr_bransi: TWideStringField;
    ADOQuery1dktr_adi: TWideStringField;
    ADOQuery1dktr_kurum_adi: TWideStringField;
    ADOQuery1dktr_muayene_yeri: TWideStringField;
    ADOTable1dktr_id: TAutoIncField;
    ADOTable1dktr_bransi: TWideStringField;
    ADOTable1dktr_adi: TWideStringField;
    ADOTable1dktr_kurum_adi: TWideStringField;
    ADOTable1dktr_muayene_yeri: TWideStringField;
    Label5: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Panel2: TPanel;
    Button2: TButton;
    Label6: TLabel;
    DateTimePicker1: TDateTimePicker;
    GroupBox1: TGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    GroupBox2: TGroupBox;
    Label11: TLabel;
    ADOTable1dktr_unvan: TWideStringField;
    ADOQuery1dktr_ucret: TWideStringField;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Button3: TButton;
    Label17: TLabel;
    Label18: TLabel;
    tus1: TPanel;
    tus2: TPanel;
    tus3: TPanel;
    tus4: TPanel;
    tus5: TPanel;
    tus6: TPanel;
    tus7: TPanel;
    tus8: TPanel;
    Button4: TButton;
    ADOQuery2: TADOQuery;
    ADOQuery2rndv_dktr_bransi: TWideStringField;
    ADOQuery2rndv_dktr_adi: TWideStringField;
    ADOQuery2rndv_dktr_kurum_adi: TWideStringField;
    ADOQuery2rndv_dktr_muayene_yeri: TWideStringField;
    ADOQuery2rndv_dktr_ucret: TWideStringField;
    Label19: TLabel;
    Panel3: TPanel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    Label27: TLabel;
    Edit2: TEdit;
    Label28: TLabel;
    Panel4: TPanel;
    ADOQuery2rndv_tarihi: TWideStringField;
    ADOQuery2rndv_saati: TWideStringField;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Button5: TButton;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Edit7: TEdit;
    Edit8: TEdit;
    Edit9: TEdit;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    ComboBox6: TComboBox;
    ComboBox7: TComboBox;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure menu1Click(Sender: TObject);
    procedure menu2Click(Sender: TObject);
    procedure menu3Click(Sender: TObject);
    procedure menu4Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure ComboBox2Select(Sender: TObject);
    procedure ComboBox3Select(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DateTimePicker1CloseUp(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure tus2Click(Sender: TObject);
    procedure tus1Click(Sender: TObject);
    procedure tus3Click(Sender: TObject);
    procedure tus4Click(Sender: TObject);
    procedure tus5Click(Sender: TObject);
    procedure tus6Click(Sender: TObject);
    procedure tus7Click(Sender: TObject);
    procedure tus8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Edit5Change(Sender: TObject);
    procedure Edit6Change(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure ComboBox5Select(Sender: TObject);
    procedure ComboBox6Select(Sender: TObject);
    procedure ComboBox7Select(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}


procedure TForm2.FormActivate(Sender: TObject);
begin
DateTimePicker1.Date:=now;
form2.ClientHeight:=400;
form2.ClientWidth:=860;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Show;
end;

procedure TForm2.menu1Click(Sender: TObject);
begin
Panel1.Visible:=True;
Panel2.Visible:=False;
Panel3.Visible:=False;
Panel4.Visible:=False;
end;

procedure TForm2.menu2Click(Sender: TObject);
begin
Panel1.Visible:=False;
Panel2.Visible:=False;
Panel3.Visible:=True;
Panel4.Visible:=False;

ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Text:='select * from randevular where rndv_hst_adi like '+#39+#37+Form1.ADOQuery1hst_adi.Value+#37+#39+' and rndv_hst_tcno like '+#39+#37+Form1.ADOQuery1hst_tcno.Value+#37+#39;
ADOQuery2.Open;


end;

procedure TForm2.menu3Click(Sender: TObject);
begin
Panel1.Visible:=False;
Panel2.Visible:=False;
Panel3.Visible:=False;
Panel4.Visible:=True;
end;

procedure TForm2.menu4Click(Sender: TObject);
begin
Form1.Close;
end;

////////////////////

procedure TForm2.ComboBox1Select(Sender: TObject);//combo1-bas
var i:integer;
begin

if (ComboBox1.Text<>'Seçiniz') and (ComboBox1.ItemIndex=0) or (ComboBox1.ItemIndex=1)
 or (ComboBox1.ItemIndex=2) or (ComboBox1.ItemIndex=3) or (ComboBox1.ItemIndex=4)  then
begin
ComboBox2.Enabled:=True;
end;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_bransi like '+#39+#37+ComboBox1.Text+#37+#39;
ADOQuery1.Open;

if ComboBox2.Text<>'Seçiniz' then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_bransi like '+#39+#37+ComboBox1.Text+#37+#39+' and dktr_kurum_adi like '+#39+#37+ComboBox2.Text+#37+#39;
ADOQuery1.Open;
end;

if ComboBox3.Enabled=True then
begin
Button2.Enabled:=False;
ComboBox3.Items.Clear;
ComboBox3.Text:='Seçiniz';
ADOQuery1.First;
for i:= 1 to ADOQuery1.RecordCount do
begin
ComboBox3.Items.Add(ADOQuery1dktr_adi.Value);
ADOQuery1.Next;
end;
end;

end;//combo1-son


procedure TForm2.ComboBox2Select(Sender: TObject);//combo2-bas
var i:integer;
begin

if (ComboBox2.Text<>'Seçiniz') and (ComboBox2.ItemIndex=0)
 or (ComboBox2.ItemIndex=1) or (ComboBox2.ItemIndex=2)  then
begin
ComboBox3.Enabled:=True;
end;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_bransi like '+#39+#37+ComboBox1.Text+#37+#39+' and dktr_kurum_adi like '+#39+#37+ComboBox2.Text+#37+#39;
ADOQuery1.Open;

Button2.Enabled:=False;
ComboBox3.Items.Clear;
ComboBox3.Text:='Seçiniz';
ADOQuery1.First;
for i:= 1 to ADOQuery1.RecordCount do
begin
ComboBox3.Items.Add(ADOQuery1dktr_adi.Value);
ADOQuery1.Next;
end;

end;//combo2-son


procedure TForm2.ComboBox3Select(Sender: TObject);//combo3-bas
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_bransi like '+#39+#37+ComboBox1.Text+#37+#39+' and dktr_kurum_adi like '+#39+#37+ComboBox2.Text+#37+#39+' and dktr_adi like '+#39+#37+ComboBox3.Text+#37+#39;
ADOQuery1.Open;

Button2.Enabled:=True;
end;//combo3-son


procedure TForm2.Edit1Change(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_adi like '+#39+#37+Edit1.Text+#37+#39;
ADOQuery1.Open;
end;


procedure TForm2.Button1Click(Sender: TObject);
begin
Edit1.Text:='';
Button2.Enabled:=False;
ComboBox1.Text:='Seçiniz';
ComboBox2.Text:='Seçiniz';
ComboBox3.Text:='Seçiniz';
ComboBox2.Enabled:=False;
ComboBox3.Enabled:=False;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar';
ADOQuery1.Open;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
Panel1.Visible:=False;
Panel2.Visible:=True;
Label7.Caption:=ComboBox3.Text;
Label8.Caption:=ComboBox1.Text;
Label9.Caption:=ComboBox2.Text;
Label10.Caption:=ADOQuery1dktr_muayene_yeri.Value;
Label11.Caption:='Muayene Ücreti '+ADOQuery1dktr_ucret.Value+' TL';

Label16.Caption:='Sayýn '+Form1.ADOQuery1hst_adi.Value+' '+Form1.ADOQuery1hst_soyadi.Value;
end;



///////////////////SAYFA-2



procedure TForm2.Button3Click(Sender: TObject);
begin
Panel1.Visible:=True;
Panel2.Visible:=False;
end;


procedure TForm2.DateTimePicker1CloseUp(Sender: TObject);
begin
if DateTimePicker1.Date<now then
begin
Application.MessageBox('EN AZ BÝR GÜN SONRASI ÝÇÝN RANDEVU ALINABÝLÝR.','H. R. S.',MB_ICONERROR);
Label17.Caption:='Randevu Tarihi - ';
Label17.Visible:=False;
Label18.Visible:=False;
GroupBox2.Visible:=False;
Button4.Enabled:=False;

tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end
else
begin
Label17.Caption:='Randevu Tarihi - '+DateToStr(DateTimePicker1.Date);
Label17.Visible:=True;
GroupBox2.Visible:=True;
end;
end;



procedure TForm2.tus1Click(Sender: TObject);
begin
tus1.Color:=clHighlight;
tus1.Font.Color:=clCream;
Label19.Caption:=tus1.Caption;
Label18.Caption:='Randevu Saati - '+tus1.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus2Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clHighlight;
tus2.Font.Color:=clCream;
Label19.Caption:=tus2.Caption;
Label18.Caption:='Randevu Saati - '+tus2.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus3Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clHighlight;
tus3.Font.Color:=clCream;
Label19.Caption:=tus3.Caption;
Label18.Caption:='Randevu Saati - '+tus3.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus4Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clHighlight;
tus4.Font.Color:=clCream;
Label19.Caption:=tus4.Caption;
Label18.Caption:='Randevu Saati - '+tus4.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus5Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clHighlight;
tus5.Font.Color:=clCream;
Label19.Caption:=tus5.Caption;
Label18.Caption:='Randevu Saati - '+tus5.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus6Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clHighlight;
tus6.Font.Color:=clCream;
Label19.Caption:=tus6.Caption;
Label18.Caption:='Randevu Saati - '+tus6.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus7Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clHighlight;
tus7.Font.Color:=clCream;
Label19.Caption:=tus7.Caption;
Label18.Caption:='Randevu Saati - '+tus7.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
tus8.Color:=clGradientInactiveCaption;
tus8.Font.Color:=clWindowText;
end;

procedure TForm2.tus8Click(Sender: TObject);
begin
tus1.Color:=clGradientInactiveCaption;
tus1.Font.Color:=clWindowText;
tus2.Color:=clGradientInactiveCaption;
tus2.Font.Color:=clWindowText;
tus3.Color:=clGradientInactiveCaption;
tus3.Font.Color:=clWindowText;
tus4.Color:=clGradientInactiveCaption;
tus4.Font.Color:=clWindowText;
tus5.Color:=clGradientInactiveCaption;
tus5.Font.Color:=clWindowText;
tus6.Color:=clGradientInactiveCaption;
tus6.Font.Color:=clWindowText;
tus7.Color:=clGradientInactiveCaption;
tus7.Font.Color:=clWindowText;
tus8.Color:=clHighlight;
tus8.Font.Color:=clCream;
Label19.Caption:=tus8.Caption;
Label18.Caption:='Randevu Saati - '+tus8.Caption;
Label18.Visible:=True;
Button4.Enabled:=True;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Text:='insert into randevular(rndv_hst_adi,rndv_hst_soyadi,rndv_hst_tcno,rndv_dktr_bransi,rndv_dktr_adi,rndv_dktr_kurum_adi,rndv_dktr_muayene_yeri,rndv_dktr_ucret,rndv_tarihi,rndv_saati) values(:h1,:h2,:h3,:d1,:d2,:d3,:d4,:d5,:r1,:r2)';
ADOQuery2.Parameters.ParamByName('h1').Value:=Form1.ADOQuery1hst_adi.Value;
ADOQuery2.Parameters.ParamByName('h2').Value:=Form1.ADOQuery1hst_soyadi.Value;
ADOQuery2.Parameters.ParamByName('h3').Value:=Form1.ADOQuery1hst_tcno.Value;
ADOQuery2.Parameters.ParamByName('d1').Value:=Label8.Caption;
ADOQuery2.Parameters.ParamByName('d2').Value:=Label7.Caption;
ADOQuery2.Parameters.ParamByName('d3').Value:=Label9.Caption;
ADOQuery2.Parameters.ParamByName('d4').Value:=Label10.Caption;
ADOQuery2.Parameters.ParamByName('d5').Value:=ADOQuery1dktr_ucret.Value;
ADOQuery2.Parameters.ParamByName('r1').Value:=DateToStr(DateTimePicker1.Date);
ADOQuery2.Parameters.ParamByName('r2').Value:=Label19.Caption;
ADOQuery2.ExecSQL;
Application.MessageBox('RANDEVU BAÞARIYLA ALINMIÞTIR.','H. R. S.',MB_ICONASTERISK);
Button4.Enabled:=False;
end;


///////////////////SAYFA-3

procedure TForm2.Button8Click(Sender: TObject);
begin
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Text:='select * from randevular';
ADOQuery2.Open;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Text:='select * from randevular where rndv_tarihi like '+#39+#37+DateToStr(date)+#37+#39;
ADOQuery2.Open;
end;

procedure TForm2.Edit2Change(Sender: TObject);
begin
ADOQuery2.Close;
ADOQuery2.SQL.Clear;
ADOQuery2.SQL.Text:='select * from randevular where rndv_hst_adi like '+#39+#37+Edit2.Text+#37+#39+' or rndv_hst_tcno like '+#39+#37+Edit2.Text+#37+#39+' or rndv_dktr_adi like '+#39+#37+Edit2.Text+#37+#39;
ADOQuery2.Open;
end;

procedure TForm2.Edit3Change(Sender: TObject);
begin
if (Edit3.Text<>Form1.ADOQuery1hst_telno.Value) or (Edit4.Text<>Form1.ADOQuery1hst_adres.Value)
 or (Edit5.Text<>Form1.ADOQuery1hst_kadi.Value) or (Edit6.Text<>Form1.ADOQuery1hst_sifre.Value) then
begin
Button5.Enabled:=True;
end
else
begin
Button5.Enabled:=False;
end;
end;

procedure TForm2.Edit4Change(Sender: TObject);
begin
if (Edit3.Text<>Form1.ADOQuery1hst_telno.Value) or (Edit4.Text<>Form1.ADOQuery1hst_adres.Value)
 or (Edit5.Text<>Form1.ADOQuery1hst_kadi.Value) or (Edit6.Text<>Form1.ADOQuery1hst_sifre.Value) then
begin
Button5.Enabled:=True;
end
else
begin
Button5.Enabled:=False;
end;
end;

procedure TForm2.Edit5Change(Sender: TObject);
begin
if (Edit3.Text<>Form1.ADOQuery1hst_telno.Value) or (Edit4.Text<>Form1.ADOQuery1hst_adres.Value)
 or (Edit5.Text<>Form1.ADOQuery1hst_kadi.Value) or (Edit6.Text<>Form1.ADOQuery1hst_sifre.Value) then
begin
Button5.Enabled:=True;
end
else
begin
Button5.Enabled:=False;
end;
end;

procedure TForm2.Edit6Change(Sender: TObject);
begin
if (Edit3.Text<>Form1.ADOQuery1hst_telno.Value) or (Edit4.Text<>Form1.ADOQuery1hst_adres.Value)
 or (Edit5.Text<>Form1.ADOQuery1hst_kadi.Value) or (Edit6.Text<>Form1.ADOQuery1hst_sifre.Value) then
begin
Button5.Enabled:=True;
end
else
begin
Button5.Enabled:=False;
end;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Form1.ADOQuery1.Close;
Form1.ADOQuery1.SQL.Clear;
Form1.ADOQuery1.SQL.Text:='update hastalar set hst_telno='+#39+Edit3.Text+#39+', hst_adres='+#39+Edit4.Text+#39+', hst_kadi='+#39+Edit5.Text+#39+', hst_sifre='+#39+Edit6.Text+#39+' where hst_tcno='+#39+Label29.Caption+#39;
Form1.ADOQuery1.ExecSQL;
Form1.Edit1.Text:=Edit5.Text;
Form1.Edit2.Text:=Edit6.Text;
Application.MessageBox('GÜNCELLEME ÝÞLEMÝ TAMAMLANDI.','H. R. S.',MB_ICONASTERISK);
Button5.Enabled:=False;
Form1.ADOQuery1.Close;
Form1.ADOQuery1.SQL.Clear;
Form1.ADOQuery1.SQL.Text:='select * from hastalar where hst_kadi='+#39+Form1.Edit1.Text+#39+' and hst_sifre='+#39+Form1.Edit2.Text+#39;
Form1.ADOQuery1.Open;
Form1.ADOQuery1.Refresh;
end;


///////////////////SAYFA-4


procedure TForm2.ComboBox5Select(Sender: TObject);//combo5-bas
var i:integer;
begin

if (ComboBox5.Text<>'Seçiniz') and (ComboBox5.ItemIndex=0) or (ComboBox5.ItemIndex=1)
 or (ComboBox5.ItemIndex=2) or (ComboBox5.ItemIndex=3) or (ComboBox5.ItemIndex=4)  then
begin
ComboBox6.Enabled:=True;
end;

if ComboBox6.Text<>'Seçiniz' then
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_bransi like '+#39+#37+ComboBox5.Text+#37+#39+' and dktr_kurum_adi like '+#39+#37+ComboBox6.Text+#37+#39;
ADOQuery1.Open;
end;

if ComboBox7.Enabled=True then
begin
Button6.Enabled:=False;
ComboBox7.Items.Clear;
ComboBox7.Text:='Seçiniz';
ADOQuery1.First;
for i:= 1 to ADOQuery1.RecordCount do
begin
ComboBox7.Items.Add(ADOQuery1dktr_muayene_yeri.Value);
ADOQuery1.Next;
end;
end;

end;//combo5-son

procedure TForm2.ComboBox6Select(Sender: TObject);  //combo6-bas
var i:integer;
begin

if (ComboBox6.Text<>'Seçiniz') and (ComboBox6.ItemIndex=0)
 or (ComboBox6.ItemIndex=1) or (ComboBox6.ItemIndex=2)  then
begin
ComboBox7.Enabled:=True;
end;

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar where dktr_bransi like '+#39+#37+ComboBox5.Text+#37+#39+' and dktr_kurum_adi like '+#39+#37+ComboBox6.Text+#37+#39;
ADOQuery1.Open;

Button6.Enabled:=False;
ComboBox7.Items.Clear;
ComboBox7.Text:='Seçiniz';
ADOQuery1.First;
for i:= 1 to ADOQuery1.RecordCount do
begin
ComboBox7.Items.Add(ADOQuery1dktr_muayene_yeri.Value);
ADOQuery1.Next;
end;

end;//combo6-son

procedure TForm2.ComboBox7Select(Sender: TObject); //combo7-bas
begin

if (ComboBox7.Text<>'Seçiniz') then
begin
Button6.Enabled:=True;
end;

end;//combo7-son

procedure TForm2.Button6Click(Sender: TObject);
begin

if (edit7.Text='') or (edit8.Text='') or (edit9.Text='')
    or (combobox5.text='Seçiniz') or (combobox6.text='Seçiniz') or (combobox7.text='Seçiniz')
     or (ComboBox5.ItemIndex<>0) and (ComboBox5.ItemIndex<>1) and (ComboBox5.ItemIndex<>2) and (ComboBox5.ItemIndex<>3)
      and (ComboBox5.ItemIndex<>4) or (ComboBox6.ItemIndex<>0) and (ComboBox6.ItemIndex<>1) and (ComboBox6.ItemIndex<>2) then
begin
Application.MessageBox('TÜM ALANLARI DOLDURUNUZ!!!','H. R. S.',MB_ICONWARNING);
end

else
begin

ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='insert into doktorlar(dktr_bransi,dktr_adi,dktr_kurum_adi,dktr_muayene_yeri,dktr_ucret) values(:d1,:d2,:d3,:d4,:d5)';
ADOQuery1.Parameters.ParamByName('d1').Value:=ComboBox5.Text;
ADOQuery1.Parameters.ParamByName('d2').Value:=ComboBox4.Text+#32+Edit7.Text+#32+Edit8.Text;
ADOQuery1.Parameters.ParamByName('d3').Value:=ComboBox6.Text;
ADOQuery1.Parameters.ParamByName('d4').Value:=ComboBox7.Text;
ADOQuery1.Parameters.ParamByName('d5').Value:=Edit9.Text;
ADOQuery1.ExecSQL;
Application.MessageBox('DOKTOR BAÞARIYLA EKLENMÝÞTÝR.','H. R. S.',MB_ICONASTERISK);
Button6.Enabled:=False;
Edit7.Text:='';
Edit8.Text:='';
Edit9.Text:='';
ComboBox4.Text:='Prof. Dr.';
ComboBox5.Text:='Seçiniz';
ComboBox6.Text:='Seçiniz';
ComboBox7.Clear;
ComboBox7.Text:='Seçiniz';
ComboBox6.Enabled:=False;
ComboBox7.Enabled:=False;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from doktorlar';
ADOQuery1.Open;
end;
end;







end.
