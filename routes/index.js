module.exports = (app) => {
    require('./groups')(app);
    require('./meetings')(app);
    require('./days')(app);
    require('./formats')(app);    
}