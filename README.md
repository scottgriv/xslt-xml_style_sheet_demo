# XSLT XML Style Sheet Demo

This project is not designed to be a comprehensive guide to `XSLT`. It is designed to be a simple, easy to understand, and easy to follow example of how to use `XSLT` and how `1.0` differs from `2.0` (and how to answer a question on Stack Overflow).

Throwback to my first answer on [Stack Overflow](https://stackoverflow.com/) on `08/19/2022` titled: [XSLT grouping into header & positions](https://stackoverflow.com/questions/73288223/xslt-grouping-into-header-positions). 

Unironically (being that it was my first ever answer), its still the only answer I have with a net negative score (`-1` at the moment). The commenter who berated me, actually made a good point. The question was indeed over my head and I did miss the tag when I answered it, but a few months later I went back to tackle it again, answering it correctly in both `XSLT 1.0` and `2.0`.

Don't give up on your previous poor answers. Sometimes you need to revisit them later to see how much you've grown.

Happy coding!

**Pro Tip:** sometimes people won't specify the exact tech they're using in the question, and utilize tags instead, so be sure to look at the tags and don't be afraid to add a comment to ask for a tag if it is missing!

## Usage

- `2.0` I utilized [xsl:for-each-group](https://www.w3.org/TR/xslt20/#xsl-for-each-group) to achieve the expected output.
- `1.0` was a little trickier, I utilized [Muenchian Grouping](https://www.jenitennison.com/xslt/grouping/muenchian.html) to achieve the expected output.

I used [.NET XSLT Fiddle](https://xsltfiddle.liberty-development.net/) to test my `XSLT` code (which utilizes the [Saxon 10.6 HE Engine](https://www.saxonica.com/welcome/welcome.xml)). I highly recommend it.

- `2.0` [XSLT Fiddle](https://xsltfiddle.liberty-development.net/gWmsLAD)
- `1.0` [XSLT Fiddle](https://xsltfiddle.liberty-development.net/jyH7UDF)

## License
This project is released under the terms of the **Unlicense**, which allows you to use, modify, and distribute the code as you see fit. The Unlicense removes traditional copyright restrictions, giving you the freedom to use the code in any way you choose.

For more details, see the [LICENSE](LICENSE) file in this repository.

## Credits

**Author:** Scott Grivner <br>
**Email:** scott.grivner@gmail.com <br>
**Website:** [scottgrivner.dev](https://www.scottgriv.dev) <br>
**Reference:** [Main Branch](https://github.com/scottgriv/xml-xslt_style_sheet_demo) <br>