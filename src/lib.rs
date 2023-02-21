use lazy_static::lazy_static;
use std::ffi::CString;
use tzf_rs::DefaultFinder;

lazy_static! {
  static ref FINDER: DefaultFinder = DefaultFinder::new();
}

#[no_mangle]
pub extern fn get_tz_name(lat: f64, lng: f64) -> CString {
  // let finder = DefaultFinder::new();

  // Create a CString so we can read this in Ruby with FFI
  let tz_name = CString::new(FINDER.get_tz_name(lng, lat));

  return tz_name.unwrap();
}
