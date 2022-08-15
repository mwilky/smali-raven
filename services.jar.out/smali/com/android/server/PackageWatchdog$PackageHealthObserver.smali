.class public interface abstract Lcom/android/server/PackageWatchdog$PackageHealthObserver;
.super Ljava/lang/Object;
.source "PackageWatchdog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PackageHealthObserver"
.end annotation


# virtual methods
.method public abstract execute(Landroid/content/pm/VersionedPackage;II)Z
.end method

.method public executeBootLoopMitigation(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public isPersistent()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public mayObservePackage(Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onBootLoop(I)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract onHealthCheckFailed(Landroid/content/pm/VersionedPackage;II)I
.end method
