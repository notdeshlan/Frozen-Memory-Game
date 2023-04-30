unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ComCtrls, GIFImg,unit3, ExtCtrls;

type
  TForm2 = class(TForm)
    Image1: TImage;
    ProgressBar1: TProgressBar;
    Image2: TImage;
    Timer1: TTimer;
    Image3: TImage;
    Image4: TImage;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
(Image1.Picture.Graphic as TGIFImage).Animate:=true;
(Image1.Picture.Graphic as TGIFImage).AnimationSpeed:=100;
Timer1.Enabled:=true;
ProgressBar1.Brush.Color:=claqua;
(Image3.Picture.Graphic as TGIFImage).Animate:=true;
(Image3.Picture.Graphic as TGIFImage).AnimationSpeed:=150;
(Image4.Picture.Graphic as TGIFImage).Animate:=true;
(Image4.Picture.Graphic as TGIFImage).AnimationSpeed:=100;
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
ProgressBar1.Enabled:=true;
ProgressBar1.Position:=ProgressBar1.Position+25;
if ProgressBar1.Position=100 then
begin
ProgressBar1.Position:=0;
timer1.Enabled:=false;
Form3.Show;
form2.Close;
end;

end;

end.
