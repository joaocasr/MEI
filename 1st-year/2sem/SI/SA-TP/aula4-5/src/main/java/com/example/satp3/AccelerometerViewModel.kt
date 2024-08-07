package com.example.satp3

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel

class AccelerometerViewModel: ViewModel() {
    // Create a LiveData object with a AccelerometerData object
    val currentAccelerometerData: MutableLiveData<AccelerometerData> by lazy {
        MutableLiveData<AccelerometerData>()
    }
}