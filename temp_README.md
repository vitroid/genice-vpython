# [{{package}}]({{url}})

A {{genice}} plugin to visualize the structure with [VPython](http://vpython.org).

version {{version}}

## Requirements

{% for i in requires %}
* {{i}}
{%- endfor %}

## Installation from PyPI

```shell
% pip install {{package}}
```

## Manual Installation

### System-wide installation

```shell
% make install
```

### Private installation

Copy the files in {{base}}/formats/ into your local formats/ folder.

## Usage

{%- filter indent %}
    {{usage_svg}}
{%- endfilter %}

## Test in place

```shell
% make test
```
