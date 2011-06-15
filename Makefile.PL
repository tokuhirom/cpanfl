use inc::Module::Install;
use Module::Install::AuthorTests;

all_from 'cpanfl';

requires 'App::cpanminus';
requires 'LWP::UserAgent' => 6;
requires 'JSON';

install_script 'cpanfl';

tests 't/*.t t/*/*.t t/*/*/*.t t/*/*/*/*.t';
test_requires 'Test::More' => 0.96; # done_testing, subtest
author_tests('xt');
WriteAll;
