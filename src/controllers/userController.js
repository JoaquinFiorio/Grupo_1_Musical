const path = require("path");
const fs = require("fs");
const bcrypt = require("bcrypt");
const { validationResult } = require('express-validator');

const usersFilePath = path.join(__dirname, '../data/user.json');
let users = JSON.parse(fs.readFileSync(usersFilePath, 'utf-8'));

const userController = {
    registerUser: (req, res) => {
        const errors = validationResult(req);
        if (!errors.isEmpty()) {
            return res.send({ errors: errors.mapped(), oldData: req.body })
        }
        const newUser = {
            id: users[users.length - 1].id + 1,
            ...req.body,
            password: bcrypt.hashSync(req.body.password, 10),
            image: req.file?.filename || "default-image.jpg"
        };
        users.push(newUser);
        fs.writeFileSync(usersFilePath, JSON.stringify(users, null, 2));
        res.redirect('/');
    },
    signInUser: (req, res) => {
        const { email, password } = req.body;
        let userFound = users.find((user) => user.email === email);

        if(!userFound) {
            return res.status(404).send({ message: "Usuario no encontrado" })
        }

        if(!bcrypt.compareSync(password, userFound.password)) {
            return res.status(500).send({ message: "Esta mal la contraseña" })
        }
        
        return res.redirect('/');

    },
    getUser: (req, res) => {

    },
    getUsers: (req, res) => {

    },
    deleteUser: (req, res) => {
        const indexUser = users.findIndex((user) => user.id == req.params.id);
        users.splice(indexUser, 1);
        fs.writeFileSync(usersFilePath, JSON.stringify(users, null, 2));
        res.redirect('/');
    },
    updateUser: () => {
        const indexUser = users.findIndex((user) => user.id == req.params.id);
        users[indexUser] = {
            ...users[indexUser],
            ...req.body
        };
        fs.writeFileSync(usersFilePath, JSON.stringify(users, null, 2));
        res.redirect('/profile');
    },
    login: () => {
        const user = req.session.user;
        if (!user) {
            return res.send('Usuario no logeado');
        }
        return res.render('profile', { user });
    }
}

module.exports = userController;