.class public abstract Lcom/android/wsuinterface/IWsuService$Stub;
.super Landroid/os/Binder;
.source "IWsuService.java"

# interfaces
.implements Lcom/android/wsuinterface/IWsuService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wsuinterface/IWsuService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/wsuinterface/IWsuService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/android/wsuinterface/IWsuService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.android.wsuinterface.IWsuService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/wsuinterface/IWsuService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/android/wsuinterface/IWsuService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/android/wsuinterface/IWsuService;
    .locals 1

    sget-object v0, Lcom/android/wsuinterface/IWsuService$Stub$Proxy;->sDefaultImpl:Lcom/android/wsuinterface/IWsuService;

    return-object v0
.end method
