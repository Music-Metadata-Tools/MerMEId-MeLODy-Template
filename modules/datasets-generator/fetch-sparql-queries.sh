EDITOR_REPO_REF=${EDITOR_REPO_REF:-main}
editor_raw_base_url=https://raw.githubusercontent.com/music-metadata-tools/MerMEId-MeLODy/$EDITOR_REPO_REF/modules/datasets-generator
CI_PROJECT_DIR="${GITHUB_WORKSPACE:-$(pwd)}"
output_dir_path=$CI_PROJECT_DIR/sparql-queries

mkdir -p $output_dir_path

for query_name in persons institutions places venues events performanceEvents instrumentations works expressions manifestations items bibliography letters dataCatalogs dataCollections; do
  echo "fetching $query_name.sparql (ref: $EDITOR_REPO_REF)"
  curl --fail --silent --show-error --output $output_dir_path/$query_name.sparql $editor_raw_base_url/$query_name.sparql
done
