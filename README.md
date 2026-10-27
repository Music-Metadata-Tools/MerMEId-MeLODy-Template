# MerMEId template

This is the template repository, which can be used to create a new data repository to edit your own data in the [MerMEId MeLODy Editor](https://music-metadata-tools.github.io/MerMEId-MeLODy/).
It contains some example Turtle files and a datasets generator to create the indexes for the dropdown menus and search indexes, which are loaded in the editor.

To configure this repository, you need to activate the GitHub Pages and modify the configuration.

## Data Validation

You can validate your data against the MerMEId MeLODy SHACL shapes using either:

### GitHub Actions Validation
1. Go to the "Actions" tab in your repository
2. Select "Data Validation" from the left sidebar
3. Click "Run workflow" button
4. View validation results in the workflow output


### Local Validation

For this you need node.js on your local machine.

1. Clone Repository
1. Install dependencies: `npm install`
2. Run validation: `npm test`

Validation will check all `.ttl` files in your data folders against the appropriate SHACL shapes and report any violations.