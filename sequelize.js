const Sequelize = require('sequelize');
const GroupModel = require('./models/group');
const MeetingModel = require('./models/meeting');

const sequelize = new Sequelize('ocaa',
    'root',
    'root', {
        host: '127.0.0.1',
        dialect: 'mysql',
        pool: {
            max: 10,
            min: 0,
            acquire: 30000,
            idle: 10000
        }
    })

const Group = GroupModel(sequelize, Sequelize);

// BlogTag will be our way of tracking relationship between Blog and Tag models
// each Blog can have multiple tags and each Tag can have multiple blogs
const GroupTag = sequelize.define('group_id', {})
const Meeting = MeetingModel(sequelize, Sequelize)

Meeting.belongsToMany(Group, {
    through: GroupTag,
    unique: false
})

Group.belongsToMany(Meeting, {
    through: GroupTag,
    unique: false
})

Meeting.belongsTo(Group);

sequelize.sync({})
    .then(() => {
        console.log(`Database & tables created!`)
    });

module.exports = {
    Group,
    Meeting,
}