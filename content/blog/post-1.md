+++
title = "Basic Markdown syntax"
template = "page.html"
date = 2025-07-14T09:39:54Z
authors = ["Moros1138's LLM"]
[taxonomies]
tags = ["markdown", "demo"]

[extra]
+++

## Headings

The following HTML `<h1>`—`<h6>` elements represent six levels of section headings. `<h1>` is the highest section level while `<h6>` is the lowest.

<!-- more -->


# H1
## H2
### H3
#### H4
##### H5
###### H6

## Snide's Stuff

### The Box

{% class(class="box small-caps") %}
A nice box to convey some important message.
{% end %}

```markdown
{%/* class(class="box small-caps") */%}
A nice box to convey some important message.
{%/* end */%}
```

### The Panel

{% class(class="panel info") %}
**Info** Fusce hendrerit pulvinar est sit amet aliquet. Nunc at justo risus. Nullam eget dui et quam tempor sollicitudin at vitae neque. Sed pretium augue ut dolor egestas posuere. Vestibulum bibendum felis justo, nec auctor mi finibus vulputate.
{% end %}

{% class(class="panel tip") %}
**Tip** Aliquam et iaculis ex, vitae finibus lorem. Ut auctor et mi a suscipit. Phasellus ante nisi, tristique eget efficitur dapibus, laoreet et tortor. Suspendisse egestas orci purus, et varius eros aliquet ut.
{% end %}

{% class(class="panel note") %}
This is an note panel.
{% end %}

{% class(class="panel warning") %}
This is a warning panel.
{% end %}

```markdown
{%/* class(class="panel warning") */%}
This is a warning panel.
{%/* end */%}
```

**Valid Panel Classes**: info, tip, note, warning

### The Legend

```
<< 1 SWAP / 1 + >>
```
{% class(class="legend") %}
Sample RPL code
{% end %}

```markdown
{%/* class(class="legend") */%}
Sample RPL code
{%/* end */%}
```

### The Footnote

This has[^2] a[^3] footnote[^foot] attached.

[^2]: Second footnote.
[^3]: Third footnote.
[^foot]: Other footnote. Better since it cannot clash if you move content around.

```markdown
This has[^2] a[^3] footnote[^foot] attached.

[^2]: Second footnote.
[^3]: Third footnote.
[^foot]: Other footnote. Better since it cannot clash if you move content around.
```

## Blockquotes

The blockquote element represents content that is quoted from another source, optionally with a citation which must be within a `footer` or `cite` element, and optionally with in-line changes such as annotations and abbreviations.

#### Blockquote without attribution

> Tiam, ad mint andaepu dandae nostion secatur sequo quae.
> **Note** that you can use *Markdown syntax* within a blockquote.

#### Blockquote with attribution

> Don't communicate by sharing memory, share memory by communicating.</p>
> — <cite>Rob Pike[^1]</cite>

[^1]: The above quote is excerpted from Rob Pike's [talk](https://www.youtube.com/watch?v=PAAkCSZUG1c) during Gopherfest, November 18, 2015.

## Tables

Tables aren't part of the core Markdown spec, but Hugo supports supports them out-of-the-box.

   Name | Age
--------|------
    Bob | 27
  Alice | 23

#### Inline Markdown within tables

| Inline&nbsp;&nbsp;&nbsp;     | Markdown&nbsp;&nbsp;&nbsp;  | In&nbsp;&nbsp;&nbsp;                | Table      |
| ---------- | --------- | ----------------- | ---------- |
| *italics*  | **bold**  | ~~strikethrough~~&nbsp;&nbsp;&nbsp; | `code`     |

## Code Blocks

#### Code block with backticks

```html
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Example HTML5 Document</title>
</head>
<body>
  <p>Test</p>
</body>
</html>
```
#### Code block indented with four spaces

    <!DOCTYPE html>
    <html lang="en">
    <head>
      <meta charset="UTF-8">
      <title>Example HTML5 Document</title>
    </head>
    <body>
      <p>Test</p>
    </body>
    </html>

## List Types

#### Ordered List

1. First item
2. Second item
3. Third item

#### Unordered List

* List item
* Another item
* And another item

#### Nested list

* Item
    1. First Sub-item
    2. Second Sub-item
* Item
    - A
    - B

## Other Elements — abbr, sub, sup, kbd, mark

<abbr title="Graphics Interchange Format">GIF</abbr> is a bitmap image format.

H<sub>2</sub>O

X<sup>n</sup> + Y<sup>n</sup> = Z<sup>n</sup>

Press <kbd><kbd>CTRL</kbd>+<kbd>ALT</kbd>+<kbd>Delete</kbd></kbd> to end the session.

Most <mark>salamanders</mark> are nocturnal, and hunt for insects, worms, and other small creatures.
