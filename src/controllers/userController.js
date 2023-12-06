const path = require("path");
const fs = require("fs");
const bcrypt = require("bcrypt")

const userFilePath = path.join(__dirname, '../data/user.json');
let users = JSON.parse(fs.readFileSync(userFilePath, 'utf-8'));

const userController = {
    registerUser: () => {
        const newUser = {
            id: users[users.length - 1].id + 1,
            ...req.body,
            password: bcrypt.hashSync(req.password, 10),
            image: req.file?.filename || "default-image.png"
        };
        users.push(newUser);
        fs.writeFileSync(usersFilePath, JSON.stringify(users, null, 2));
        res.redirect('/');
    },
    signInUser: () => {
        //Recordar usar bcrypt.compareSync(password, user.password) para validar las claves encriptadas

    },
    getUser: () => {

    },
    getUsers: () => {

    },
    deleteUser: () => {
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
    // login: () => {
    //         const user = req.session.user;
    //         if (!user) {
    //             return res.send('Usuario no logeado');
    //         }
    //         return res.render('profile', { user });
    // }
}