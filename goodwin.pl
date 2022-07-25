use strict;
use warnings;
use utf8;
use Tk;

my $mw = MainWindow->new();

$mw->Label(-text=>"good window example")->pack();

$mw->Button(
    -text=>"Exit", 
    -command=>sub{$mw->destroy();}
)->pack(
    -side=>"bottom",
    -expand=>1,
    -fill=>'x',
);

$mw->Checkbutton(-text=>"I like it!")->pack(
    -side=>'left',
    -expand=>1,
);
$mw->Checkbutton(-text=>"I hate it!")->pack(
    -side=>'left',
    -expand=>1,
);
$mw->Checkbutton(-text=>"I don't care!")->pack(
    -side=>'left',
    -expand=>1,
);


MainLoop;