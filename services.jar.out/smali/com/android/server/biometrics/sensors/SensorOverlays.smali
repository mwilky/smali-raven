.class public final Lcom/android/server/biometrics/sensors/SensorOverlays;
.super Ljava/lang/Object;
.source "SensorOverlays.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SensorOverlays"


# instance fields
.field private final mSidefpsController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/fingerprint/ISidefpsController;",
            ">;"
        }
    .end annotation
.end field

.field private final mUdfpsOverlayController:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/IUdfpsOverlayController;Landroid/hardware/fingerprint/ISidefpsController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-static {p2}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    return-void
.end method


# virtual methods
.method public hide(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SensorOverlays"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/ISidefpsController;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/ISidefpsController;->hide(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when hiding the side-fps overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {v0, p1}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->hideUdfpsOverlay(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "Remote exception when hiding the UDFPS overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method

.method public ifUdfps(Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer<",
            "Landroid/hardware/fingerprint/IUdfpsOverlayController;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {p1, v0}, Lcom/android/server/biometrics/sensors/SensorOverlays$OverlayControllerConsumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "SensorOverlays"

    const-string v2, "Remote exception using overlay controller"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public show(IILcom/android/server/biometrics/sensors/AcquisitionClient;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/android/server/biometrics/sensors/AcquisitionClient<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    const-string v1, "SensorOverlays"

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mSidefpsController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/ISidefpsController;

    invoke-interface {v0, p1, p2}, Landroid/hardware/fingerprint/ISidefpsController;->show(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception when showing the side-fps overlay"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/android/server/biometrics/sensors/SensorOverlays$1;

    invoke-direct {v0, p0, p3}, Lcom/android/server/biometrics/sensors/SensorOverlays$1;-><init>(Lcom/android/server/biometrics/sensors/SensorOverlays;Lcom/android/server/biometrics/sensors/AcquisitionClient;)V

    :try_start_1
    iget-object v2, p0, Lcom/android/server/biometrics/sensors/SensorOverlays;->mUdfpsOverlayController:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/IUdfpsOverlayController;

    invoke-interface {v2, p1, p2, v0}, Landroid/hardware/fingerprint/IUdfpsOverlayController;->showUdfpsOverlay(IILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "Remote exception when showing the UDFPS overlay"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    return-void
.end method