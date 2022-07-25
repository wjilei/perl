use strict;
use warnings;
use utf8;
use Tk;

my $mw = MainWindow->new();

$mw->Label(-text=>"bad window example")->pack();

$mw->Checkbutton(-text=>"I like it!")->pack();
$mw->Checkbutton(-text=>"I hate it!")->pack();
$mw->Checkbutton(-text=>"I don't care!")->pack();
$mw->Button(-text=>"Exit", -command=>sub{$mw->destroy();})->pack();

MainLoop;