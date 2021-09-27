var Migrations = artifacts.require("./Lecture14.sol");

module.exports = function(deployer) {
  deployer.deploy(Migrations);
};
