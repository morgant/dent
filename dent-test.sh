#!/usr/bin/env roundup

describe "dent"

it_indents_output_of_command() {
  test "$(./dent echo "Hello world")" = "  Hello world"
}

it_indents_nested_calls() {
  export DENT_LEVEL=1
  test "$(./dent echo "Hello world")" = "    Hello world"
}

it_indents_with_custom_character() {
  export DENT_CHAR='..'
  test "$(./dent echo "Hello world")" = "..Hello world"
}
