package com.example.ejasexrecjgg.ui.components

import androidx.compose.foundation.BorderStroke
import androidx.compose.foundation.shape.RoundedCornerShape
import androidx.compose.material3.Button
import androidx.compose.material3.ButtonColors
import androidx.compose.material3.ButtonDefaults
import androidx.compose.material3.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.mutableStateOf
import androidx.compose.runtime.remember
import androidx.compose.runtime.setValue
import androidx.compose.ui.Modifier
import androidx.compose.ui.graphics.Color
import androidx.compose.ui.unit.dp

@Composable
fun MyButton(text: String, color: Color, modifier: Modifier = Modifier){
    var buttonText by remember {mutableStateOf("Pulsa aquí")}
    var buttonColor by remember { mutableStateOf(Color.DarkGray)}
    var colorText by remember{ mutableStateOf(Color.White)}
    var buttonBorder by remember { mutableStateOf(BorderStroke(1.dp, Color.Black)) }
    var buttonShape by remember { mutableStateOf(RoundedCornerShape(20.dp)) }
    Button(
        onClick = {
            buttonText = text;
            colorText = Color.Black;
            buttonColor = color;
            buttonBorder = BorderStroke(3.dp, Color.Black);
            buttonShape = RoundedCornerShape(4.dp);
        },
        border = buttonBorder,
        shape = buttonShape,
        colors = ButtonDefaults.buttonColors(buttonColor)
    ){
        Text(buttonText, color = colorText)
    }
}