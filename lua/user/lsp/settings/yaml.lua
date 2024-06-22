return {
  settings = {
    yaml = {
      schemas = {
        "https://raw.githubusercontent.com/compose-spec/compose-spec/master/schema/compose-spec.json": "**/docker-compose*.y*ml",
        "https://github.com/buildkite/pipeline-schema/blob/main/schema.json": "**/pipeline.y*ml",
      }
    }
  }
}
