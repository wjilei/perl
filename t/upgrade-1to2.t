#!/usr/bin/env perl

use Test::Most;
use Test::DBIx::Class
    -schema_class=>'MusicBase::Schema',
    -fixture_class => '::Population',
    qw(Artist Country);

plan skip_all => 'not correct schema version'
    if Schema->schema_version != 2;

fixtures_ok ['all_tables'];

is Country->count, 3, 'Correct Number of Countries';
ok Artist->first->has_country, 'Artist has a country';

done_testing;