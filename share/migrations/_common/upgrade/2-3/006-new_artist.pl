use strict;
use warnings;
use DBIx::Class::Migration::RunScript;

migrate {
    shift->schema
    ->resultset('Artist')
    ->create({
        name => 'JoJo',
        country_fk => {code=>'usa'},
        artist_cds => [
        { cd_fk => { 
            title=>'My Cool New Album'}
        }
        ],
    });
}