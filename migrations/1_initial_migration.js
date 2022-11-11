const DAffinity = artifacts.require("DAffinity")

module.exports = function (deployer) {
    deployer.deploy(DAffinity);
};
