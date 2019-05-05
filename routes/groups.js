const Sequelize = require('sequelize');

const {
    Group,
    Meeting
} = require('../models');

module.exports = (app) => {

    // create a group
    app.post('/api/groups', (req, res) => {

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

    app.put('/api/groups/:groupId', (req, res) => {

        const update = Object.assign({}, {
            name: req.body.name,
            is_wheelchair_accessible: req.body.is_wheelchair_accessible,
            administrative_area_level_1: req.body.administrative_area_level_1,
            administrative_area_level_2: req.body.administrative_area_level_2,
            administrative_area_level_3: req.body.administrative_area_level_3,
            lat: req.body.lat,
            lng: req.body.lng,
            locality: req.body.locality,
            neighborhood: req.body.neighborhood,
            location: req.body.location,
            postal_code: req.body.postal_code,
            postal_code_suffix: req.body.postal_code_suffix,
            route: req.body.route,
            street_number: req.body.street_number,
        });

        Group.update(update, {
                where: {
                    id: req.params.groupId
                }
            })
            .then((rowsUpdated) => {
                res.json(rowsUpdated);
            })
            .catch((res) => console.log(res));

    });

    // get all groups
    app.get('/api/groups/:groupId?', (req, res) => {
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