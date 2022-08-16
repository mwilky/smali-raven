.class public interface abstract Lcom/android/systemui/statusbar/policy/DevicePostureController;
.super Ljava/lang/Object;
.source "DevicePostureController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/policy/DevicePostureController$Callback;",
        ">;"
    }
.end annotation


# direct methods
.method public static devicePostureToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const-string v0, "UNSUPPORTED POSTURE posture="

    invoke-static {v0, p0}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DEVICE_POSTURE_FLIPPED"

    return-object p0

    :cond_1
    const-string p0, "DEVICE_POSTURE_OPENED"

    return-object p0

    :cond_2
    const-string p0, "DEVICE_POSTURE_HALF_OPENED"

    return-object p0

    :cond_3
    const-string p0, "DEVICE_POSTURE_CLOSED"

    return-object p0

    :cond_4
    const-string p0, "DEVICE_POSTURE_UNKNOWN"

    return-object p0
.end method


# virtual methods
.method public abstract getDevicePosture()I
.end method
