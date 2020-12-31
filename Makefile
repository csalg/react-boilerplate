.PHONY: run build

build:
	npm install
	echo 'export default "${API_URL}"' > 'src/api_endpoint.js'
	npm run build

run:
	http-server-spa /app/build index.html 3000
