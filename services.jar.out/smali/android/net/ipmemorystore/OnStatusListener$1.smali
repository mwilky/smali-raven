.class public Landroid/net/ipmemorystore/OnStatusListener$1;
.super Landroid/net/ipmemorystore/IOnStatusListener$Stub;
.source "OnStatusListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnStatusListener;->toAIDL(Landroid/net/ipmemorystore/OnStatusListener;)Landroid/net/ipmemorystore/IOnStatusListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnStatusListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnStatusListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ipmemorystore/OnStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnStatusListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnStatusListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    const-string p0, "d5ea5eb3ddbdaa9a986ce6ba70b0804ca3e39b0c"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public onComplete(Landroid/net/ipmemorystore/StatusParcelable;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ipmemorystore/OnStatusListener$1;->val$listener:Landroid/net/ipmemorystore/OnStatusListener;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {p0, v0}, Landroid/net/ipmemorystore/OnStatusListener;->onComplete(Landroid/net/ipmemorystore/Status;)V

    :cond_0
    return-void
.end method
