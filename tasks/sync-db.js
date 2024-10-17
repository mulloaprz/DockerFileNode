let times = 0;

const syncDB = () =>{
    times++;
    console.log('running a task every 5 seconds 1.0.1', times);

    return times;
}

module.exports = { syncDB }