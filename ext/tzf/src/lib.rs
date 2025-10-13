use lazy_static::lazy_static;
use magnus::{function, prelude::*, Error, Ruby};

use tzf_rs::DefaultFinder;

lazy_static! {
  static ref FINDER: DefaultFinder = DefaultFinder::new();
}

#[no_mangle]
fn get_tz_name(lat: f64, lng: f64) -> &'static str {
  let tz_name: &str = FINDER.get_tz_name(lng, lat);

  return tz_name;
}

#[no_mangle]
fn get_tz_names(lat: f64, lng: f64) -> Vec<&'static str> {
  let tz_names: Vec<&str> = FINDER.get_tz_names(lng, lat);

  return tz_names;
}

#[magnus::init]
fn init(ruby: &Ruby) -> Result<(), Error> {
    let module = ruby.define_module("TZF")?;

    module.define_singleton_method("tz_name", function!(get_tz_name, 2))?;
    module.define_singleton_method("tz_names", function!(get_tz_names, 2))?;

    Ok(())
}
