.class Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;
.super Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;
.source "OnNetworkAttributesRetrievedListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->toAIDL(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;


# direct methods
.method constructor <init>(Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;)V
    .locals 0

    iput-object p1, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    invoke-direct {p0}, Landroid/net/ipmemorystore/IOnNetworkAttributesRetrievedListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    const-string v0, "d5ea5eb3ddbdaa9a986ce6ba70b0804ca3e39b0c"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    const/16 v0, 0xa

    return v0
.end method

.method public onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/StatusParcelable;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V
    .locals 3

    iget-object v0, p0, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener$1;->val$listener:Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;

    if-eqz v0, :cond_1

    new-instance v1, Landroid/net/ipmemorystore/Status;

    invoke-direct {v1, p1}, Landroid/net/ipmemorystore/Status;-><init>(Landroid/net/ipmemorystore/StatusParcelable;)V

    if-nez p3, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Landroid/net/ipmemorystore/NetworkAttributes;

    invoke-direct {v2, p3}, Landroid/net/ipmemorystore/NetworkAttributes;-><init>(Landroid/net/ipmemorystore/NetworkAttributesParcelable;)V

    :goto_0
    invoke-interface {v0, v1, p2, v2}, Landroid/net/ipmemorystore/OnNetworkAttributesRetrievedListener;->onNetworkAttributesRetrieved(Landroid/net/ipmemorystore/Status;Ljava/lang/String;Landroid/net/ipmemorystore/NetworkAttributes;)V

    :cond_1
    return-void
.end method
