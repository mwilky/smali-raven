.class public final synthetic Lcom/android/server/biometrics/sensors/BiometricSchedulerOperation$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    invoke-static {}, Landroid/os/Build;->isDebuggable()Z

    move-result p0

    return p0
.end method
