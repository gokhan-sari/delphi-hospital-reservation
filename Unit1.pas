unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, DB, ADODB;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Button3: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    ComboBox1: TComboBox;
    Button4: TButton;
    Label11: TLabel;
    Button5: TButton;
    memo1: TMemo;
    ADOQuery1hst_id: TAutoIncField;
    ADOQuery1hst_kadi: TWideStringField;
    ADOQuery1hst_sifre: TWideStringField;
    ADOQuery1hst_adi: TWideStringField;
    ADOQuery1hst_soyadi: TWideStringField;
    ADOQuery1hst_tcno: TWideStringField;
    ADOQuery1hst_telno: TWideStringField;
    ADOQuery1hst_adres: TWideStringField;
    ADOQuery1hst_cins: TWideStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}


procedure TForm1.FormActivate(Sender: TObject);
begin
form1.ClientHeight:=350;
form1.ClientWidth:=400;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
panel1.Visible:=False;
panel2.Visible:=True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from hastalar where hst_kadi='+#39+Edit1.Text+#39+' and hst_sifre='+#39+Edit2.Text+#39;
ADOQuery1.Open;
ADOQuery1.Refresh;

if ADOQuery1.RecordCount>0 then
//if not ADOQuery1.Eof then
begin
Form1.Hide;
Form2.Show;

Form2.Label20.Caption:='Ad Soyad : '+ADOQuery1hst_adi.Value+' '+ADOQuery1hst_soyadi.Value;
Form2.Label23.Caption:='Cinsiyet : '+ADOQuery1hst_cins.Value;
Form2.Label29.Caption:=ADOQuery1hst_tcno.Value;
Form2.Edit3.Text:=ADOQuery1hst_telno.Value;
Form2.Edit4.Text:=ADOQuery1hst_adres.Value;
Form2.Edit5.Text:=ADOQuery1hst_kadi.Value;
Form2.Edit6.Text:=ADOQuery1hst_sifre.Value;


end
else
begin
Application.MessageBox('HATALI GÝRÝÞ !!!','H. R. S.',MB_ICONERROR);
end;
end;

///////////////////////////////////////////////////////////

procedure TForm1.Button3Click(Sender: TObject);
begin
panel1.Visible:=True;
panel2.Visible:=False;
Label11.Visible:=False;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin

if (edit3.Text='') or (edit4.Text='') or (edit5.Text='')
 or (edit6.Text='') or (edit7.Text='') or (edit8.Text='')
  or (memo1.Text='') or (combobox1.ItemIndex=-1)
   or (edit7.GetTextLen<11) or (edit8.GetTextLen<11)
    or (combobox1.ItemIndex<>0) and (combobox1.ItemIndex<>1) then
begin
label11.Visible:=True;
label11.Caption:='TÜM ALANLARI DOLDURUNUZ!!!';
end

else
begin
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='insert into hastalar(hst_kadi,hst_sifre,hst_adi,hst_soyadi,hst_tcno,hst_telno,hst_adres,hst_cins) values(:kadi,:sifre,:adi,:soyadi,:tcno,:telno,:adres,:cins)';
ADOQuery1.Parameters.ParamByName('kadi').Value:=Edit3.Text;
ADOQuery1.Parameters.ParamByName('sifre').Value:=Edit4.Text;
ADOQuery1.Parameters.ParamByName('adi').Value:=Edit5.Text;
ADOQuery1.Parameters.ParamByName('soyadi').Value:=Edit6.Text;
ADOQuery1.Parameters.ParamByName('tcno').Value:=Edit7.Text;
ADOQuery1.Parameters.ParamByName('telno').Value:=Edit8.Text;
ADOQuery1.Parameters.ParamByName('adres').Value:=Memo1.Text;
ADOQuery1.Parameters.ParamByName('cins').Value:=ComboBox1.Text;
ADOQuery1.ExecSQL;
ADOQuery1.Close;
ADOQuery1.SQL.Clear;
ADOQuery1.SQL.Text:='select * from hastalar';
ADOQuery1.Open;
ADOQuery1.Refresh;
Label11.Visible:=False;
Application.MessageBox('KAYIT ÝÞLEMÝ BAÞARILI.','H. R. S.',MB_ICONASTERISK);
Edit1.Text:=Edit3.Text;
Edit2.Text:=Edit4.Text;
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Memo1.Text:='';
ComboBox1.Text:='Seçiniz';
Panel1.Visible:=True;
Panel2.Visible:=False;
end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Edit3.Text:='';
Edit4.Text:='';
Edit5.Text:='';
Edit6.Text:='';
Edit7.Text:='';
Edit8.Text:='';
Memo1.Text:='';
ComboBox1.Text:='Seçiniz';
Label11.Visible:=False;
end;


end.
