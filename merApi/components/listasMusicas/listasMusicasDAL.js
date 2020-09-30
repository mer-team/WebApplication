// var models = require('../models/index');
var models = require('../../models/index');

exports.addMusic = async (lista) => {
    await models.ListaMusicas.create(lista);
}

exports.deleteMusicList = async (musicID,listID) =>{
    var deleteMusicMusic;
    await models.ListaMusicas.destroy({where:{listaFK:listID,musicFK:musicID}}).then(usr => deleteMusicMusic = usr).catch(err => console.log(err));
    return deleteMusicMusic;
  }

  
exports.getMusicList = async (listID) =>{
    var deleteList;
    await models.ListaMusicas.findAll({where:{listaFK:listID},include:[models.Music]}).then(usr => deleteList = usr).catch(err => console.log(err));
    return deleteList;
  }

  exports.existsMusicList = async (listID,musicID) =>{
    var existsMusicList;
    await models.ListaMusicas.findOne({where:{listaFK:listID,musicFK:musicID}}).then(usr => existsMusicList = usr).catch(err => console.log(err));
    return existsMusicList;
  }