/* controller takes in actions and requests from the 
   user and works with them to update the models
*/

const { getAllPlanets } = require('../../models/planets.model');

async function httpGetAllPlanets(req, res) {
  return  res.status(200).json(await getAllPlanets());
}


module.exports = {
   httpGetAllPlanets,
   

}
 