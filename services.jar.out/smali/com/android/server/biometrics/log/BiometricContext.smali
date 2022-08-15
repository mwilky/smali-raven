.class public interface abstract Lcom/android/server/biometrics/log/BiometricContext;
.super Ljava/lang/Object;
.source "BiometricContext.java"


# direct methods
.method public static getInstance(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContext;
    .locals 0

    invoke-static {p0}, Lcom/android/server/biometrics/log/BiometricContextProvider;->defaultProvider(Landroid/content/Context;)Lcom/android/server/biometrics/log/BiometricContextProvider;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract isAod()Z
.end method

.method public abstract subscribe(Landroid/hardware/biometrics/common/OperationContext;Ljava/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/common/OperationContext;",
            "Ljava/util/function/Consumer<",
            "Landroid/hardware/biometrics/common/OperationContext;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract unsubscribe(Landroid/hardware/biometrics/common/OperationContext;)V
.end method

.method public abstract updateContext(Landroid/hardware/biometrics/common/OperationContext;Z)Landroid/hardware/biometrics/common/OperationContext;
.end method
