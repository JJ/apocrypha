#!/usr/bin/env perl6

use v6;

use Perl6::Documentable::Registry;

my $top-dir = $*CWD ~~ /resources/ ?? "../pods" !! $*CWD ~ "/resources/pods/";

my $registry = Perl6::Documentable::Registry.new(
        topdir    => $top-dir,             # doc containing the pod collection
        dirs      => ["Type", "Language"], # dirs to process
        verbose   => True,
        use-cache => True                  # recommended
        );

$registry.compose;
say $registry.lookup("Type",:by<kind>);