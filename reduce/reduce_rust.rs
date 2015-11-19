use std::env;

#[cfg(test)]
mod tests {
    use super::env_to_num;
    use std::env;

    #[test]
    fn it_works() {
        let key = "TESTVAR";
        let value = "42";
        env::set_var(key, value);
        assert_eq!(env_to_num(key), Ok(42));
    }
}

fn env_to_num(var_name: &str) -> Result<u64, String> {
    let var = try!(env::var(var_name).map_err(|e| e.to_string()));
    let num: u64 = try!(var.parse::<u64>().map_err(|e| e.to_string()));
    Ok(num)
}

fn main() {
    let limit = match env_to_num("LIMIT") {
        Ok(n) => n,
        Err(_) => 999999,
    };
    let nums = (0..limit).collect::<Vec<u64>>();
    println!("{}", nums.iter().fold(0, |acc, &item| acc + item));
}
