.class public Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;
.super Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;
.source "OnSameL3NetworkResponseListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->toAIDL(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;


# direct methods
.method public constructor <init>(Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnSameL3NetworkResponseListener$Stub;-><init>()V

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

.method public onSameL3NetworkResponse(Landroid/net/ipmemorystore/StatusParcelable;Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V
    .locals 1

    iget-object p0, p0, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener$1;->val$listener:Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;

    if-eqz p0, :cond_0

    new-instance v0, Landroid/net/ipmemorystore/Status;

    invoke-direct {v0, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    new-instance p1, Landroid/net/ipmemorystore/SameL3NetworkResponse;

    invoke-direct {p1, p2}, Landroid/net/ipmemorystore/SameL3NetworkResponse;-><init>(Landroid/net/ipmemorystore/SameL3NetworkResponseParcelable;)V

    invoke-interface {p0, v0, p1}, Landroid/net/ipmemorystore/OnSameL3NetworkResponseListener;->onSameL3NetworkResponse(Landroid/net/ipmemorystore/Status;Landroid/net/ipmemorystore/SameL3NetworkResponse;)V

    :cond_0
    return-void
.end method
