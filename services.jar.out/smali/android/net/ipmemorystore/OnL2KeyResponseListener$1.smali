.class public Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;
.super Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;
.source "OnL2KeyResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnL2KeyResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)Landroid/net/ipmemorystore/IOnL2KeyResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnL2KeyResponseListener$Stub;-><init>()V

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

.method public onL2KeyResponse(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ipmemorystore/OnL2KeyResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    invoke-interface {p0, v0, p2}, Landroid/net/ipmemorystore/OnL2KeyResponseListener;->onL2KeyResponse(Landroid/net/ipmemorystore/Status;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
