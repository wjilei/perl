use strict;
use warnings;
use utf8;
use Tk;
use Tkx;

print Tkx::ttk__style_theme_names(), "\n";

my $mw = MainWindow->new();


$mw->Button(
    -text=>"Exit", 
    -command=>sub{$mw->destroy();}
)->pack(
    -side=>'top',
    -expand=>1,
    -fill=>'x',
);

$mw->Button(-text=>"I don't care!")->pack(
    -side=>'bottom',
    -expand=>1,
    -fill=>'x',
);


$mw->Button(-text=>"I like it!")->pack(
    -side=>'left',
);

$mw->Button(-text=>"I hate it!")->pack(
    -side=>'right',
);


MainLoop;