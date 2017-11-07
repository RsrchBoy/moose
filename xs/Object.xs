#include "mop.h"

MODULE = Class::MOP::Object   PACKAGE = Class::MOP::Object

PROTOTYPES: DISABLE

BOOT:
    INSTALL_SIMPLE_READER(Object, definition_context);
