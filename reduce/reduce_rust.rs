use std::env;

#[cfg(test)]
mod tests {
    use super::env_to_str;
    use std::env;

    #[test]
    fn it_works() {
        let key = "TESTVAR";
        let value = "42";
        env::set_var(key, value);
        assert_eq!(env_to_str(key), Ok(42));
    }
}

fn env_to_str(var_name: &str) -> Result<u64, String> {
    let var = try!(env::var(var_name).map_err(|e| e.to_string()));
    let num: u64 = try!(var.parse::<u64>().map_err(|e| e.to_string()));
    Ok(num)
}

fn main() {
    let to_val = match env_to_str("LIMIT") {
        Ok(n) => n,
        Err(_) => 999999,
    };
    let nums = (1..to_val).collect::<Vec<u64>>();
    println!("{}", nums.iter().fold(0, |acc, &item| acc + item));
}
