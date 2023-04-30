unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, pngimage, jpeg, ExtCtrls, StdCtrls, Buttons,unit4, GIFImg;

type
  TForm3 = class(TForm)
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    BitBtn1: TBitBtn;
    Image4: TImage;
    Button1: TButton;
    Button2: TButton;
    Image5: TImage;
    Image6: TImage;
    Button3: TButton;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
image3.Visible:=true;
Button1.Visible:=true;
Button1.Enabled:=true;

end;

procedure TForm3.Button1Click(Sender: TObject);
begin
Image4.Visible:=true;
Button2.Visible:=true;
Button1.Enabled:=false;
Button2.Enabled:=true;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
image4.Visible:=false;
Button1.Enabled:=true;
Button2.Enabled:=false;
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
form4.Show;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
(Image5.Picture.Graphic as TGIFImage).Animate:=true;
 (Image5.Picture.Graphic as TGIFImage).AnimationSpeed:=75;
end;

end.
