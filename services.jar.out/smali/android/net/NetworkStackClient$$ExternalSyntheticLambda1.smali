.class public final synthetic Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/net/NetworkStackClient$NetworkStackCallback;


# instance fields
.field public final synthetic f$0:Ljava/lang/String;

.field public final synthetic f$1:Landroid/net/ip/IIpClientCallbacks;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iput-object p2, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$1:Landroid/net/ip/IIpClientCallbacks;

    return-void
.end method


# virtual methods
.method public final onNetworkStackConnected(Landroid/net/INetworkStackConnector;)V
    .locals 1

    iget-object v0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$0:Ljava/lang/String;

    iget-object p0, p0, Landroid/net/NetworkStackClient$$ExternalSyntheticLambda1;->f$1:Landroid/net/ip/IIpClientCallbacks;

    invoke-static {v0, p0, p1}, Landroid/net/NetworkStackClient;->$r8$lambda$FxTPBf8RuWQq_A8GUXl2g94g3NE(Ljava/lang/String;Landroid/net/ip/IIpClientCallbacks;Landroid/net/INetworkStackConnector;)V

    return-void
.end method
