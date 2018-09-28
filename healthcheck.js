const http = require('http');
const child_process = require('child_process');

const respond = function (res, code, message) {

	res.writeHead(code, {
		'Content-Type': 'text/plain'
	});

	res.end(message);
};

const server = http.createServer((req, res) => {

	child_process.exec('docker system info --format "{{.Swarm.LocalNodeState}}"', (error, stdout, stderr) => {

		const err = stderr.replace(/\r?\n|\r/g, ' ').trim();
		const out = stdout.replace(/\r?\n|\r/g, ' ').trim();

		if (error) {
			respond(res, 500, 'ERR [' + err + ']');
		} else if (out !== 'active') {
			respond(res, 500, 'NOK [' + out + ']');
		} else {
			respond(res, 200, 'OK');
		}
	});
});

server.listen(80);
