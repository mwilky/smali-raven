.class public final Lcom/android/systemui/biometrics/BiometricDisplayListener;
.super Ljava/lang/Object;
.source "BiometricDisplayListener.kt"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;
    }
.end annotation


# instance fields
.field public final context:Landroid/content/Context;

.field public final displayManager:Landroid/hardware/display/DisplayManager;

.field public final handler:Landroid/os/Handler;

.field public lastRotation:I

.field public final onChanged:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final sensorType:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/hardware/display/DisplayManager;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->handler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->sensorType:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;

    iput-object p5, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->onChanged:Lkotlin/jvm/functions/Function0;

    return-void
.end method


# virtual methods
.method public final disable()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p0}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    return-void
.end method

.method public final enable()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->lastRotation:I

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->handler:Landroid/os/Handler;

    const-wide/16 v2, 0x4

    invoke-virtual {v0, p0, v1, v2, v3}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;J)V

    return-void
.end method

.method public final onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public final onDisplayChanged(I)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->context:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->lastRotation:I

    iput p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->lastRotation:I

    if-eq v1, p1, :cond_2

    const/4 v0, 0x1

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->sensorType:Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType;

    instance-of p1, p1, Lcom/android/systemui/biometrics/BiometricDisplayListener$SensorType$SideFingerprint;

    if-eqz p1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->onChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDisplayListener;->onChanged:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_4
    :goto_2
    return-void
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
