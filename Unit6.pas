unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, pngimage, jpeg, ExtCtrls, unit9, db, Spin, login;

type
  TForm6 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    SpinEdit1: TSpinEdit;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;
  username, pass1, pass2: string;

implementation

{$R *.dfm}

uses unit5;

procedure TForm6.Button1Click(Sender: TObject);
var
  login: textfile;
  sline: string;
  exists, done: boolean;
begin
  username := Edit1.Text;
  pass1 := Edit2.Text;
  pass2 := Edit3.Text;
  exists := false;
  with unit9.Form9 do
  begin
    if (username = '') or (username = ' ') or (pass1 = ' ') or (pass1 = '') or
      (pass2 = ' ') or (pass2 = '') then
    begin
      ShowMessage('Please Fill In All Required Fields');
    end
    else
    begin
      if ADOTable1.Locate('Username', username, [loCaseInsensitive]) then
      begin
        ShowMessage('Username Already Exists');
        exists := true;
      end
      else if exists = false then
      begin
        if pass1 = pass2 then
        begin
          ADOTable1.Last;
          ADOTable1.Insert;
          ADOTable1['Username'] := username;
          ADOTable1['Password'] := pass1;
          ADOTable1['Age'] := strtoint(SpinEdit1.Text);
          ADOTable1.Post;
          ShowMessage('Account Created Successfully');
          frmlogin.Show;
        end
        else
          ShowMessage('Passwords Do Not Match');
      end;
    end;
  end;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
  form5.Show;
  Form6.Hide;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm6.CheckBox1Click(Sender: TObject);
begin
  if CheckBox1.Checked = true then
  begin
    Edit2.PasswordChar := #0;
  end
  else
    Edit2.PasswordChar := '*';
end;

procedure TForm6.CheckBox2Click(Sender: TObject);
begin
  if CheckBox2.Checked = true then
  begin
    Edit3.PasswordChar := #0;
  end
  else
    Edit3.PasswordChar := '*';
end;

end.
