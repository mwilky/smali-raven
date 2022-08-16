.class public final Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;
.super Ljava/lang/Object;
.source "UdfpsTouchProvider.kt"

# interfaces
.implements Lcom/android/systemui/biometrics/AlternateUdfpsTouchProvider;


# instance fields
.field public final extensionProvider:Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;

.field public fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->extensionProvider:Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;

    return-void
.end method


# virtual methods
.method public final getFingerprintExt()Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->extensionProvider:Lcom/google/android/systemui/fingerprint/FingerprintExtProvider;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "android.hardware.biometrics.fingerprint.IFingerprint/default"

    invoke-static {v0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->getExtension()Landroid/os/IBinder;

    move-result-object v0

    sget v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub;->$r8$clinit:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {v0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v1

    if-eqz v1, :cond_1

    instance-of v2, v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    if-eqz v2, :cond_1

    check-cast v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;

    invoke-direct {v1, v0}, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    :goto_0
    move-object v0, v1

    :goto_1
    if-nez v0, :cond_2

    const-string v1, "FingerprintExtProvider"

    const-string v2, "FingerprintExt was null, ignoring calls to this object"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    if-nez v1, :cond_3

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    :cond_3
    return-object v0
.end method

.method public final onPointerDown(JIIFF)V
    .locals 7

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->getFingerprintExt()Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, p1

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;->onPointerDown(JIIFF)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "UdfpsTouchProvider"

    const-string p2, "Remote exception while calling onPointerDown"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    :goto_0
    return-void
.end method

.method public final onPointerUp(J)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->getFingerprintExt()Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;->onPointerUp(J)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p1, "UdfpsTouchProvider"

    const-string p2, "Remote exception while calling onPointerUp"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    :goto_0
    return-void
.end method

.method public final onUiReady()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->getFingerprintExt()Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;->onUiReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "UdfpsTouchProvider"

    const-string v1, "Remote exception while calling onUiReady"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/systemui/fingerprint/UdfpsTouchProvider;->fingerprintExt:Lcom/google/hardware/biometrics/fingerprint/IFingerprintExt;

    :goto_0
    return-void
.end method
