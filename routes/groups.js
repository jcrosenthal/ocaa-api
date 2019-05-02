const Sequelize = require('sequelize');

const {
    Group,
    Meeting
} = require('../models');

module.exports = (app) => {

    // create a group
    app.post('/groups', (req, res) => {

        Group.create(Object.assign({}, req.body, {
                meetings: undefined
            }))
            .then(group => {

                if (req.body.meetings) {
                    req.body.meetings.forEach((m, i) => {
                        Meeting.create(Object.assign({}, m, {
                                group_id: group.id
                            }))
                            .then(() => {
                                if (i === req.body.meetings.length - 1) {
                                    return res.json(group.id);
                                }
                            });
                    });
                } else {
                    return res.json(group);
                }

            });

    });

    // get all groups
    app.get('/groups/:groupId?', (req, res) => {
        let findObj = {
            include: [{
                model: Meeting,
                where: {
                    group_id: Sequelize.col('Group.id')
                }
            }]
        };

        const groupId = req.params.groupId;

        if (groupId) {
            findObj.where = {
                id: groupId,
            };
        }

        Group.findAll(findObj)
            .then(groups => res.json(groups));

    });

}