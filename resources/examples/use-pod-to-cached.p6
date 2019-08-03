#!/usr/bin/env perl6

use v6;

use Pod::To::Cached;

my Pod::To::Cached $cache .= new(:source<../pods>);
$cache.update-cache;
for $cache.hash-files.kv -> $source-name, $status {
    say "$source-name is $status";
    say $cache.pod($source-name);
}