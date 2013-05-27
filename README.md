# Detangle you jQuery

This is the repository that supports the .net article of the same title.

Issue support is through github issues. Thanks for reading!

## Getting Started

All dependencies are managed with NPM. You will need that installed in
order to run the project, please see https://npmjs.org for more details.

Grunt.js will manage the process of compiling the CoffeeScript to
JavaScript and copying dependencies into the right place. You can learn
more about Grunt here: http://gruntjs.com.

```
npm install
grunt
```

## Getting to the code samples

I'm using git tags to point you to specific snapshots of the project.
You can see the tags by running `git tags` and checkout a specific tag
with `git checkout <tag>`. Or, browse the source with the branch
dropdown in the github GUI.

Each example in the article has an associated tag.

## Further Exploration

Here are a couple ideas to take the code in this tutorial a step or two
further:

- jQuery has its own template functions, use that instead of inline html as a
  string
- the divs in index.html that hold the examples all have a class of
  'span4'. Visit the [CoffeeScript](http://coffeescript.org) site and learn about list
  comprehensions to write a loop that creates the views. How does that
  compare to the `.each` function that comes with jQuery? Which would
  you prefer to use.
- If the requirements continue to grow and it seems we need a more
  complete solution, how simple would it be to convert the existing class into a
  Backbone.View class? Hint: `window.RowViewWithBinding extends
  Backbone.View`
