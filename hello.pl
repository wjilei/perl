use strict;
use warnings;
use utf8;
use Tk;


my $mw = MainWindow->new();
$mw->title("Hello world, 世界");

$mw->Button(
    -text=>"关闭", 
    -command=>sub{$mw->destroy();}
)->pack(-side=>'right');

MainLoop();