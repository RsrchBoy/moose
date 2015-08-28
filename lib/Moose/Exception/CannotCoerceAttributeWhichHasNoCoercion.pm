package Moose::Exception::CannotCoerceAttributeWhichHasNoCoercion;
our $VERSION = '2.1604';

use Moose;
extends 'Moose::Exception';
with 'Moose::Exception::Role::InvalidAttributeOptions', 'Moose::Exception::Role::TypeConstraint';

sub _build_message {
    my $self = shift;
    my $name = $self->attribute_name;
    my $type = $self->type_name;

    return "You cannot coerce an attribute ($name) unless its type ($type) has a coercion";
}

1;
