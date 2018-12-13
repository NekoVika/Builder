.PHONY: all

print-%: ; @echo $*=$($*)

default: help

build_base: .build_base ## Build base animetardia image

# build_bot: .build_bot ## Build bot image

.build_base:
	./scripts/build_base.sh

help: ## this help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {sub("\\\\n",sprintf("\n%22c"," "), $$2);printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)
