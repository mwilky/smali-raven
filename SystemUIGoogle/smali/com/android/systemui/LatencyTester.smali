.class public Lcom/android/systemui/LatencyTester;
.super Lcom/android/systemui/SystemUI;
.source "LatencyTester.java"


# instance fields
.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/systemui/LatencyTester;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    iput-object p3, p0, Lcom/android/systemui/LatencyTester;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/LatencyTester;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/LatencyTester;->fakeWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method private fakeWakeAndUnlock(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/LatencyTester;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAcquired(Landroid/hardware/biometrics/BiometricSourceType;)V

    iget-object p0, p0, Lcom/android/systemui/LatencyTester;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;Z)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.latency.ACTION_FACE_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance v2, Lcom/android/systemui/LatencyTester$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/LatencyTester$1;-><init>(Lcom/android/systemui/LatencyTester;)V

    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method
