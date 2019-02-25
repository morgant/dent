#!/usr/bin/env roundup

describe "indented"

it_indents_output_of_command() {
  test "$(./indented echo "Hello world")" = "  Hello world"
}

it_indents_nested_calls() {
  export INDENT_LEVEL=1
  test "$(./indented echo "Hello world")" = "    Hello world"
}

it_indents_with_custom_character() {
  export INDENT_CHAR='..'
  test "$(./indented echo "Hello world")" = "..Hello world"
}
