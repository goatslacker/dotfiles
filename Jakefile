var sys = require("sys"),
    exec = require('child_process').exec,
    command = "cp -R",
    files = ['.vimrc', '.vim', '.jshintrc', '.gitconfig', '.hgrc'],
    target = '~/';


function run(command_to_run, file) {
  exec(command_to_run, function (err, std_out, std_err) {
    if (err) {
      console.log(file + " failed");
    } else {
      console.log("copied " + file + " successfully");
    }
  });
}

task("install", [], function () {
   
  files.forEach(function (file) {
    var statement = command + " " + file + " " + target;
    run(statement, file);
  });

}, true);

task("update", [], function () {
  files.forEach(function (file) {
    var statement = command + " " + target + file + " .";
    run(statement, file);
  });
});
