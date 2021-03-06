extend.QuESTFimoNames <-
function(shortNames, fullNames) {
  shortNames <- as.character(shortNames)
  process.ext <- function(sname) {
    grep(sname, fullNames)
  }
  sfExport("fullNames")
  extendedNames <- unlist(sfClusterApplyLB(shortNames, process.ext))
  fullNames[unlist(extendedNames)]
}
