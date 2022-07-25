on 'runtime' => sub {
    requires 'Tk', "==804.036";
    requires 'Tk::Sugar', '==1.093190';
    requires 'Tk::Date', '==0.44';
    requires 'Tk::TimePick', '==0.02';
    requires 'Tk::SlideSwitch', '==1.1';
    requires 'Tk::ChooseDate', '==0.4';
    requires 'SQL::Translator', '>=0.11018';
    requires 'DBIx::Class::Migration', "==0.075";
    requires 'DBIx::Class::Migration::Script';
};

on 'develop' => sub {
    requires  'Test::Most';
    requires  'Test::DBIx::Class';
}