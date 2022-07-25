use strict;


use warnings;
use utf8;
use Getopt::Long;
use Data::Dumper;
use DB::Schema;
use DBIx::Class::Migration;


my $i = 0;
my $u = 0;
my $d;
my $D = 0;
my $x = GetOptions ( "install" => \$i,
'upgrade'=>\$u,
'downgrade=s'=>\$d,
"drop"=>\$D);

my $schema = DB::Schema->connect('dbi:SQLite:./my.db');

my $migration = DBIx::Class::Migration->new(schema => $schema);

if($i) {
    $migration->prepare();
}
if($u) {
    $migration->upgrade();  
}

if($d) { 
    print "$d\n";
    $migration->{dbic_dh_args}{to_version} = int($d);
    $migration->downgrade();
}


if($D) {
    # $migration->drop_tables();'
    if(!$migration->dbic_dh->version_storage_is_installed) {
        $migration->prepare();
        $migration->install_version_storage();
    }
}





