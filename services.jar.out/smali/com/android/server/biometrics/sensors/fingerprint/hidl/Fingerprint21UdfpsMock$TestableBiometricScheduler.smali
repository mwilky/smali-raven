.class Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;
.super Lcom/android/server/biometrics/sensors/BiometricScheduler;
.source "Fingerprint21UdfpsMock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TestableBiometricScheduler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler$TestableInternalCallback;
    }
.end annotation


# instance fields
.field private mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

.field private final mInternalCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler$TestableInternalCallback;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V
    .locals 1

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/biometrics/sensors/BiometricScheduler;-><init>(Ljava/lang/String;ILcom/android/server/biometrics/sensors/fingerprint/GestureAvailabilityDispatcher;)V

    new-instance v0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler$TestableInternalCallback;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler$TestableInternalCallback;-><init>(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler$TestableInternalCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;)Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    return-object v0
.end method


# virtual methods
.method protected getInternalCallback()Lcom/android/server/biometrics/sensors/BiometricScheduler$InternalCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->mInternalCallback:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler$TestableInternalCallback;

    return-object v0
.end method

.method init(Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock$TestableBiometricScheduler;->mFingerprint21:Lcom/android/server/biometrics/sensors/fingerprint/hidl/Fingerprint21UdfpsMock;

    return-void
.end method
