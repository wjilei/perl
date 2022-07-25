use strict;
use warnings;
use DBIx::Class::Migration::RunScript;

migrate {
    shift->schema
    ->resultset('Country')
    ->populate([
        ['code'],
        ['bel'],
        ['deu'],
        ['fra'],
    ]);
}