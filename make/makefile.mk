LIBRARY_DIR ?= ../library
OUTPUT_BASE_DIR ?= ..

LIBRARY_UPGRADE_LIST ?= ubinos mp_course_examples

help: common-help

include $(LIBRARY_DIR)/ubinos/make/common.mk
-include $(LIBRARY_DIR)/ubinos/make/custom.mk

%: common-% ;

zbatch-%: common-zbatch-%
	make -C ../library/ubinos/make                              OUTPUT_BASE_DIR=$(realpath $(OUTPUT_BASE_DIR)) LIBRARY_DIR=$(realpath $(LIBRARY_DIR)) $@
	make -C ../library/mp_course_examples/make                  OUTPUT_BASE_DIR=$(realpath $(OUTPUT_BASE_DIR)) LIBRARY_DIR=$(realpath $(LIBRARY_DIR)) $@

