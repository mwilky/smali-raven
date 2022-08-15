.class public final synthetic Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:Landroid/net/RouteInfo;


# direct methods
.method public synthetic constructor <init>(Landroid/net/RouteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda8;->f$0:Landroid/net/RouteInfo;

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/NetworkManagementService$$ExternalSyntheticLambda8;->f$0:Landroid/net/RouteInfo;

    invoke-static {p0, p1}, Lcom/android/server/NetworkManagementService;->$r8$lambda$CF2XPDnS2IaiP8WZN-NVUuSn_yo(Landroid/net/RouteInfo;Landroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
