package com.example.satp3
import android.content.Context
import android.hardware.Sensor
import android.hardware.SensorEvent
import android.hardware.SensorEventListener
import android.hardware.SensorManager
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.WindowManager
import android.widget.Button
import android.widget.TextView
import androidx.activity.viewModels
import androidx.lifecycle.Observer
import kotlin.math.roundToInt

class MainActivity : AppCompatActivity() {
    lateinit var texto:TextView
    lateinit var sensorManager:SensorManager;
    private val aViewModel: AccelerometerViewModel by viewModels()
    lateinit var resumeBtn : Button;
    lateinit var stopBtn : Button;
    lateinit var accelerometerSensorListener:AccelerometerSensorListener;


    override fun onCreate(savedInstanceState: Bundle?) {
        window.addFlags(WindowManager.LayoutParams.FLAG_KEEP_SCREEN_ON)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)

        resumeBtn = findViewById(R.id.resumeBtn);
        stopBtn = findViewById(R.id.stopBtn);

        resumeBtn.setOnClickListener {
            // get the sensor manager
            sensorManager = getSystemService(Context.SENSOR_SERVICE) as SensorManager
            // get the accelerometer sensor
            val mAccelerometer = sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER)
            // if the smartphone has this sensor
            if (mAccelerometer != null){
                accelerometerSensorListener = AccelerometerSensorListener()
                accelerometerSensorListener.setSensorManager(sensorManager,aViewModel);
                sensorManager.registerListener(accelerometerSensorListener,mAccelerometer,SensorManager.SENSOR_DELAY_FASTEST)
            }
        }
        stopBtn.setOnClickListener {
            sensorManager.unregisterListener(accelerometerSensorListener)
        }

        val accelerometerObserver = Observer<AccelerometerData> { accSample ->
            val m :String = "x: "+ accSample.valueX.toString() + "\ny: "+accSample.valueY.toString()+"\nz: "+accSample.valueZ;
            findViewById<TextView>(R.id.accid).text =m
        }
        // observe the LiveData, passing in this activity as the LifecycleOwner and the observer
        aViewModel.currentAccelerometerData.observe(this, accelerometerObserver)

    }

/*
    override fun onResume() {
        super.onResume()
        sensorManager.registerListener(this, sensorManager.getDefaultSensor(Sensor.TYPE_ACCELEROMETER),
            SensorManager.SENSOR_DELAY_FASTEST)
    }

    override fun onPause() {
        super.onPause()
        sensorManager.unregisterListener(this)
    }
*/
}