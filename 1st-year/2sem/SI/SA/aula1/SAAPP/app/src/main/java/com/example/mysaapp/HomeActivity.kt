package com.example.mysaapp

import android.content.Intent
import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import com.google.android.gms.auth.api.signin.GoogleSignIn
import com.google.android.gms.auth.api.signin.GoogleSignInClient
import com.google.android.gms.auth.api.signin.GoogleSignInOptions
import com.google.firebase.auth.FirebaseAuth
import com.google.firebase.auth.ktx.auth
import com.google.firebase.ktx.Firebase

class HomeActivity : AppCompatActivity() {
    private lateinit var auth: FirebaseAuth;
    lateinit var mGoogleSignInClient: GoogleSignInClient;

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_home)

        auth = Firebase.auth
        val welcometxtview : TextView = findViewById(R.id.welcometxt);
        val logoutbtn : Button = findViewById(R.id.signoutbtn);

        if(auth.currentUser != null){
            val email = auth.currentUser!!.email;
            val m = "Olá, "+ email.toString();
            welcometxtview.setText(m);
        }

        val gso = GoogleSignInOptions.Builder(GoogleSignInOptions.DEFAULT_SIGN_IN)
            .requestIdToken(getString(R.string.default_web_client_id))
            .requestEmail()
            .build()
        mGoogleSignInClient = GoogleSignIn.getClient(this, gso)

        logoutbtn.setOnClickListener {
            auth.signOut();
            val intent = Intent(this,LoginActivity::class.java);
            startActivity(intent);
            finish();
        }
    }
}