package Moose::Meta::Method::Accessor::Native::Hash::map_values;

# This is an extension to the "Hash" attribute native trait... Since 1.15,
# each accessor to a native trait has its own metaclass, meaning that we can
# "add" new ones simply by defining another method metaclass of the right
# name.

use Moose::Role 1.15;
use namespace::autoclean;
use common::sense;

with
    'Moose::Meta::Method::Accessor::Native::Array::map' => {
        -excludes => [qw{ _return_value }],
        -alias    => { _return_value => '_array_return_value' },
    },
    'Moose::Meta::Method::Accessor::Native::Hash',
    ;

sub _return_value
{
    my ($self, $slot_access) = @_;

    return $self->_array_return_value("[ values %{ $slot_access } ]");
}

1;
