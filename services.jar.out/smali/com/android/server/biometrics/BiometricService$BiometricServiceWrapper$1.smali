.class public Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;
.super Lcom/android/server/biometrics/BiometricSensor;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->registerAuthenticator(IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/android/server/biometrics/BiometricSensor;-><init>(Landroid/content/Context;IIILandroid/hardware/biometrics/IBiometricAuthenticator;)V

    return-void
.end method


# virtual methods
.method public confirmationAlwaysRequired(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper$1;->this$1:Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;->this$0:Lcom/android/server/biometrics/BiometricService;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-virtual {v0, p0, p1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getConfirmationAlwaysRequired(II)Z

    move-result p0

    return p0
.end method

.method public confirmationSupported()Z
    .locals 0

    iget p0, p0, Lcom/android/server/biometrics/BiometricSensor;->modality:I

    invoke-static {p0}, Lcom/android/server/biometrics/Utils;->isConfirmationSupported(I)Z

    move-result p0

    return p0
.end method
