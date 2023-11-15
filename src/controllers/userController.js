const path = require("path");
const fs = require("fs")

const userFilePath = path.join(__dirname, '../data/user.json');
let users = JSON.parse(fs.readFileSync(userFilePath, 'utf-8'));

const userController = {
    registerUser: () => {

    },
    signInUser: () => {

    },
    getUser: () => {

    },
    getUsers: () => {

    },
    deleteUser: () => {

    },
    updateUser: () => {
        
    }
}