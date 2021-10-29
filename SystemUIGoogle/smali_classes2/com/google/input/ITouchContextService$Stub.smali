.class public abstract Lcom/google/input/ITouchContextService$Stub;
.super Landroid/os/Binder;
.source "ITouchContextService.java"

# interfaces
.implements Lcom/google/input/ITouchContextService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/input/ITouchContextService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/input/ITouchContextService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public static asInterface(Landroid/os/IBinder;)Lcom/google/input/ITouchContextService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    sget-object v0, Lcom/google/input/ITouchContextService;->DESCRIPTOR:Ljava/lang/String;

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/google/input/ITouchContextService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/google/input/ITouchContextService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/google/input/ITouchContextService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/google/input/ITouchContextService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/google/input/ITouchContextService;
    .locals 1

    sget-object v0, Lcom/google/input/ITouchContextService$Stub$Proxy;->sDefaultImpl:Lcom/google/input/ITouchContextService;

    return-object v0
.end method
