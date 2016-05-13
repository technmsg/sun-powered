# Powered by the Sun

## Presentations

A PDF copy of the presentation will be posted **after** the event.

* OSCON 2016

In the meantime the presentation content is available in Markdown.

## Usage

1. Install [reveal.js](https://github.com/hakimel/reveal.js), following the [installation instructions](https://github.com/hakimel/reveal.js/#installation) for "full setup"

2. Check out this repository then move all the files and directories into the directory where you installed reveal.js, notably overwriting index.html

4. Run get_assets.sh to retrieve the necessary images

   ```sh
   $ sh get_assets.sh sun-powered.md
   ```

5. Serve the presentation and monitor source files for changes

   ```sh
   $ grunt serve
   ```

6. Open <http://localhost:8000> to view your presentation

   You can change the port by using `grunt serve --port 8001`.

## Licensing

The presentation structure, textual content, diagrams, and images **provided in this repository** are copyright Alex Moundalexis and provided under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/). See the file `LICENSE.txt` for more information.

[![CC BY 4.0](https://i.creativecommons.org/l/by/4.0/88x31.png)](http://creativecommons.org/licenses/by/4.0/)

The lone helper script is provided under the [Apache Software License 2.0](http://www.apache.org/licenses/LICENSE-2.0).

The image assets **referenced by the repository** (and retrieved by `get_assets.sh`) are provided under their respective Creative Commons licenses. Some images have more restrictive licenses, for example not all are licensed for commercial usage.

The reveal.js framework is MIT licensed.

