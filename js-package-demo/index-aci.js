const http = require('http');
const os = require('os');
const mp = require('@metaparticle/package');

const port = 8080;

const server = http.createServer((request, response) => {
	console.log(request.url);
	response.end(`Hello World: hostname: ${os.hostname()}\n`);
});

mp.containerize(
	{
		ports: [8080],
		repository: 'brendanburns',
                runner: 'aci',
		publish: true,
		public: true
	},
	() => {
		server.listen(port, () => {
			console.log(`server up on ${port}`);
		});
	}
);
