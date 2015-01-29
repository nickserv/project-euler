use std::iter::AdditiveIterator;

fn solve() -> isize {
  range(0, 1000).filter(|&n| n % 3 == 0 || n % 5 == 0).sum()
}

fn main() {
  println!("{}", solve());
}
