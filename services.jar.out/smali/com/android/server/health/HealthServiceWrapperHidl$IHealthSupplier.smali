.class public interface abstract Lcom/android/server/health/HealthServiceWrapperHidl$IHealthSupplier;
.super Ljava/lang/Object;
.source "HealthServiceWrapperHidl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/health/HealthServiceWrapperHidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IHealthSupplier"
.end annotation


# virtual methods
.method public get(Ljava/lang/String;)Landroid/hardware/health/V2_0/IHealth;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;,
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p0, 0x1

    invoke-static {p1, p0}, Landroid/hardware/health/V2_0/IHealth;->getService(Ljava/lang/String;Z)Landroid/hardware/health/V2_0/IHealth;

    move-result-object p0

    return-object p0
.end method
