.class public abstract Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub;
.super Landroid/os/Binder;
.source "IColumbusServiceGestureListener.java"

# interfaces
.implements Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.systemui.columbus.IColumbusServiceGestureListener"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;
    .locals 1

    sget-object v0, Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener$Stub$Proxy;->sDefaultImpl:Lcom/google/android/systemui/columbus/IColumbusServiceGestureListener;

    return-object v0
.end method
