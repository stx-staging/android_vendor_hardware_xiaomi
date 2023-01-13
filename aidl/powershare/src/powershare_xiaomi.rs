// Copyright (C) 2023 StatiXOS
// SPDX-License-Identifer: Apache-2.0
use vendor_lineage_powershare::aidl::vendor::lineage::powershare::{
    IPowerShare::IPowerShare
};

use vendor_lineage_powershare::binder::{
    Interface, Result as BinderResult, StatusCode
};

const WIRELESS_TX_ENABLE_PATH: &str = "/proc/wireless/enable_tx";

// Static file functions
fn set(path: &str, value: String) -> Result<(), StatusCode> {
    std::fs::write(path, value).map_err(|_| StatusCode::PERMISSION_DENIED)
}

fn get<T: From<Vec<u8>>>(path: &str, default: T) -> T {
    let result = std::fs::read(path);
    if let Ok(answer) = result {
        answer.into()
    } else {
        default
    }
}

pub struct XiaomiPowerShare;

impl Interface for XiaomiPowerShare {}

impl IPowerShare for XiaomiPowerShare {

    fn isEnabled(&self) -> BinderResult<bool> {
        Ok(std::str::from_utf8(&get(WIRELESS_TX_ENABLE_PATH, "0".as_bytes().to_vec())).unwrap() == "1\n")
    }

    fn setEnabled(&self, enabled: bool) -> BinderResult<bool> {
        set(WIRELESS_TX_ENABLE_PATH, if enabled { "1".to_string() } else { "0".to_string() })?;
        self.isEnabled()
    }

    fn getMinBattery(&self) -> BinderResult<i32> {
        Ok(0i32)
    }

    fn setMinBattery(&self, _level: i32) -> BinderResult<i32> {
        Ok(0i32)
    }

}

