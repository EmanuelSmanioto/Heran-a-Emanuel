import {Cliente} from './models/cliente.js';

const c1 = new Cliente(1, "emanuel@gmail.com", "123abc", "Emanuel Smanioto", "1234567");
console.log(c1.login());
c1.info();