const restify = require('restify');

const server = restify.createServer({
	name: 'myapp',
	version: '1.0.0'
});

var knex = require('knex')({
	client:'mysql',
	connection:{
		host:'us-cdbr-iron-east-02.cleardb.net',
		user:'b6dfb2a82120bf',
		password : '9a2a1b22',
    	database : 'heroku_386712ab8af941e'
	}
});

const errs = require('restify-errors')

server.use(restify.plugins.acceptParser(server.acceptable));
server.use(restify.plugins.queryParser());
server.use(restify.plugins.bodyParser());

const PORT = process.env.PORT || 8080;

server.listen(PORT, function(){
	console.log('%s listening at %s', server.name, server.url);
});

server.get('/positions/:id', (req, res, next) =>{
	const { id } = req.params;

	knex('historico_vagas')
	.where('id',id)
	.first()
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});

server.get('/description/:descricao', (req, res, next) => {
	const { descricao } = req.params;

	knex('historico_vagas')
	.where('descricao', 'like', '%'+descricao+'%')
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});


server.get('/location/:cidade', (req, res, next) => {
	const { cidade } = req.params;

	knex('historico_vagas')
	.where('cidade','like','%'+cidade+'%')
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});


server.get('/full_time/:tipo_tempo', (req, res, next) => {
	const { tipo_tempo } = req.params;

	knex('historico_vagas')
	.where('tipo_tempo','like','%'+tipo_tempo+'%')
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});

server.get('/description/:descricao/location/:cidade/full_time/:tipo_tempo', (req, res, next) => {
	const { descricao } = req.params;
	const { cidade } = req.params;
	const { tipo_tempo } = req.params;

	knex('historico_vagas')
	.where('descricao', 'like', '%'+descricao+'%')
	.andWhere('cidade','like','%'+cidade+'%')
	.andWhere('tipo_tempo','like','%'+tipo_tempo+'%')
	.then((dados) => {
		if(!dados) return res.send(new errs.BadRequestError('nenhum registro encontrado'));
		res.send(dados);
	},next)
});