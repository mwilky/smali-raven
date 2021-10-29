.class public final Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FaceAuthScreenBrightnessController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;-><init>(Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/res/Resources;Lcom/android/systemui/util/settings/GlobalSettings;Lcom/android/systemui/util/settings/SystemSettings;Landroid/os/Handler;Lcom/android/systemui/dump/DumpManager;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricRunningStateChanged(ZLandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-eq p2, v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController$keyguardUpdateCallback$1;->this$0:Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;

    invoke-static {p0}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$getEnabled$p(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;->access$setOverridingBrightness(Lcom/android/systemui/keyguard/FaceAuthScreenBrightnessController;Z)V

    return-void
.end method
