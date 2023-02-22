use lazy_static::lazy_static;
use magnus::{define_module, function, prelude::*, Error};
use magnus::{RString};

use tzf_rs::DefaultFinder;

lazy_static! {
  static ref FINDER: DefaultFinder = DefaultFinder::new();
}

#[no_mangle]
fn get_tz_name(lat: f64, lng: f64) -> RString {
  let tz_name = RString::new(FINDER.get_tz_name(lng, lat));

  return tz_name;
}

#[magnus::init]
fn init() -> Result<(), Error> {
    let module = define_module("TZF")?;

    module.define_singleton_method("tz_name", function!(get_tz_name, 2))?;

    Ok(())
}
