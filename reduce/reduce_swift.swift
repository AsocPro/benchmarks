import Foundation

func getLimit() -> Int {
  if let envLimit = NSProcessInfo.processInfo().environment["LIMIT"],
      limit = Int(envLimit) where limit >= 0 {
    return limit
  }
  return 999999
}

print([Int](0...getLimit()).reduce(0, combine: +))
