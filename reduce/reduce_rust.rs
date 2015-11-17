use std::env;

fn main() {
    match env::var("LIMIT") {
        Ok(limit) => println!("LIMIT is {}", limit),
        Err(_) => println!("There is no limit...?"),
    }
}
