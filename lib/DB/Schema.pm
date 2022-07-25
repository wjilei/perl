package DB::Schema;

use Moo;

extends 'DBIx::Class::Schema';

our $VERSION = '0.001';


__PACKAGE__->load_namespaces();


1;
