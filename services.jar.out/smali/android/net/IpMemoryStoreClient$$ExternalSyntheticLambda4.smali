.class public final synthetic Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/net/IpMemoryStoreClient;

.field public final synthetic f$1:Landroid/net/ipmemorystore/NetworkAttributes;

.field public final synthetic f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$0:Landroid/net/IpMemoryStoreClient;

    iput-object p2, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$1:Landroid/net/ipmemorystore/NetworkAttributes;

    iput-object p3, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$0:Landroid/net/IpMemoryStoreClient;

    iget-object v1, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$1:Landroid/net/ipmemorystore/NetworkAttributes;

    iget-object p0, p0, Landroid/net/IpMemoryStoreClient$$ExternalSyntheticLambda4;->f$2:Landroid/net/ipmemorystore/OnL2KeyResponseListener;

    check-cast p1, Landroid/net/IIpMemoryStore;

    invoke-static {v0, v1, p0, p1}, Landroid/net/IpMemoryStoreClient;->$r8$lambda$7W79KLQVfoLiB8G5oI7DzBK-8KA(Landroid/net/IpMemoryStoreClient;Landroid/net/ipmemorystore/NetworkAttributes;Landroid/net/ipmemorystore/OnL2KeyResponseListener;Landroid/net/IIpMemoryStore;)V

    return-void
.end method
