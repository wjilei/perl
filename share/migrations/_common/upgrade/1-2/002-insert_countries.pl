use strict;
use warnings;
use DBIx::Class::Migration::RunScript;

migrate {
    shift->schema
    ->resultset('Country')
    ->populate([
        ['name'],
        ['Canada'],
        ['Mexico'],
        ['USA'],
    ]);
};