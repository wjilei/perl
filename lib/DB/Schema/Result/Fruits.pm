package DB::Schema::Result::Fruits;

use Moo;

extends 'DBIx::Class::Core';

__PACKAGE__->table('fruits');

__PACKAGE__->add_columns(
    id=> {
        data_type => 'integer',
        size => 16,
        is_nullable => 0,
        is_auto_increment => 1,
    },
    name => {
        data_type => 'varchar',
        size => 64,
        is_nullable => 0,
    },
    # price=> {
    #     data_type=> 'integer',
    #     is_nullable=>1,
    # }
);

__PACKAGE__->set_primary_key('id');


1;