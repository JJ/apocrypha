#!/usr/bin/env perl6

use v6;

=begin pod

This is I<apocrypha>

=head1 Lesson 1

Doc is code

=end pod

say $=pod[0].perl;

=output
Pod::Block::Named.new(name => "pod", config => {}, contents => [Pod::Block::Para.new(config => {}, contents => ["This is ", Pod::FormattingCode.new(type => "I", meta => [], config => {}, contents => ["apocrypha"])]), Pod::Heading.new(level => 1, config => {}, contents => [Pod::Block::Para.new(config => {}, contents => ["Lesson 1"])]), Pod::Block::Para.new(config => {}, contents => ["Doc is code"])])
