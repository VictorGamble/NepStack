const express = require('express');
const router = express.Router();
const restaurantModel = require('../models/restaurantModel')

/* GET home page. */
router.get('/', async function (req, res, next) {
  const data = await restaurantModel.getById(1);
  res.render('template', {
    locals: {
      title: 'Express',
      data: data
    },
    partials: {
      partial: 'partial-index'
    }
  });
});

module.exports = router;