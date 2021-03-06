# snap-shot-it Bindings for js\_of\_ocaml #
This library provides bindings for [https://github.com/bahmutov/snap-shot-it](snap-shot-it) to use with js\_of\_ocaml.

## Requirements ##

* js\_of\_ocaml
* js\_of\_ocaml-ppx
* opam 2.0

## Installation ##
1. Clone this repository
1. Add reactjscaml as pinned project

   ```shell
   $ cd path_to_cloned_path
   $ opam install .
   ```

1. Add snap-shot-it\_of\_ocaml to your project's dependency.

   If you already use opam, add ``depends`` follows.

   ```
   "snap-shot-it" {test}
   ```

1. Install npm package to use this library.

    ```shell
    $ npm install --save-dev snap-shot-it mocha
    ```

## Development ##

### Build ###

```shell
jbuilder build
```

### Test ###

```shell
# only once
npm install --save-dev mocha
jbuilder runtest
```

## License ##
MIT
