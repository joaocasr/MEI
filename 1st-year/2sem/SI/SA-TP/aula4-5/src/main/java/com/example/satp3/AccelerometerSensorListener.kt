package com.example.satp3

import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import android.util.Log
import kotlin.math.roundToInt

class AccelerometerSensorListener:SensorEventListener {
    companion object{
        private const val TAG:String = "AccelerometerSensorListener"
    }
    private lateinit var sensorManager: SensorManager;
    private lateinit var ourAccelerometerViewModel: AccelerometerViewModel;

    fun setSensorManager(sensorMan:SensorManager,accvm:AccelerometerViewModel){
        sensorManager = sensorMan;
        ourAccelerometerViewModel = accvm;
    }

    override fun onSensorChanged(event: SensorEvent?) {
        if(event!=null) {
            AccelerometerData.valueX = (event.values[0] * 10.0).roundToInt() / 10.0
            AccelerometerData.valueY = (event.values[1] * 10.0).roundToInt() / 10.0
            AccelerometerData.valueZ = (event.values[2] * 10.0).roundToInt() / 10.0
            AccelerometerData.accuracy = event.accuracy
            ourAccelerometerViewModel.currentAccelerometerData.value = AccelerometerData

        }
    }

    override fun onAccuracyChanged(sensor: Sensor?, accuracy: Int) {
    }
}