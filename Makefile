help:
	@echo Make what?

admin/venv:
	nodeenv --node=6.9.1 --prebuilt admin/venv

admin/activate: admin/activate.in
	@admin/bin/write-activate.sh

node_modules: admin/activate admin/venv package.json
	. admin/activate && npm install

install: admin/activate admin/venv node_modules

clean:
	rm -rf admin/activate admin/venv node_modules
