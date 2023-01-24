all: format lint test

test:
	nvim --headless --noplugin -u scripts/minimal.vim -c "PlenaryBustedDirectory tests { minimal_init = './scripts/minimal_init.vim' }"

lint:
	luacheck lua tests

format:
	stylua lua tests
