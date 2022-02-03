export name = $(POST_NAME)
export title = $(POST_TITLE)
build: ##pour génerer un fichier html dans repertoire dist
	@hugo  -d ./dist
clean: ##supprimer le contenu de repertoire dist
	@rm -r dist/*
post:  ##creer une novelle post
	@hugo new posts/${name}.md
	@sed -i 's/title: "*" /title: "${title}"/' content/posts/${name}.md
help:
	@echo "build:pour génerer un fichier html dans repertoire dist"
	@echo "clean:supprimer le contenu de repertoire dist"
	@echo "post:creer une novelle post"
	@echo "help:afficher l'aide"
