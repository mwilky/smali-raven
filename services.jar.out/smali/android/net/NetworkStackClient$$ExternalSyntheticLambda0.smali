.class public final synthetic Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field public final synthetic f$0:Landroid/net/IIpMemoryStoreCallbacks;


# direct methods
.method public synthetic constructor <init>(Landroid/net/IIpMemoryStoreCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;->f$0:Landroid/net/IIpMemoryStoreCallbacks;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda0;->f$0:Landroid/net/IIpMemoryStoreCallbacks;

    invoke-static {v0, p1}, Landroid/net/NetworkStackClient;->lambda$fetchIpMemoryStore$3(Landroid/net/IIpMemoryStoreCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
