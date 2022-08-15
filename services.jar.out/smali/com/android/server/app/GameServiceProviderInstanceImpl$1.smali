.class public Lcom/android/server/app/GameServiceProviderInstanceImpl$1;
.super Ljava/lang/Object;
.source "GameServiceProviderInstanceImpl.java"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameServiceProviderInstanceImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/ServiceConnector$ServiceLifecycleCallbacks<",
        "Landroid/service/games/IGameService;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/app/GameServiceProviderInstanceImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onConnected(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Landroid/service/games/IGameService;

    invoke-virtual {p0, p1}, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->onConnected(Landroid/service/games/IGameService;)V

    return-void
.end method

.method public onConnected(Landroid/service/games/IGameService;)V
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/app/GameServiceProviderInstanceImpl$1;->this$0:Lcom/android/server/app/GameServiceProviderInstanceImpl;

    invoke-static {p0}, Lcom/android/server/app/GameServiceProviderInstanceImpl;->-$$Nest$fgetmGameServiceController(Lcom/android/server/app/GameServiceProviderInstanceImpl;)Landroid/service/games/IGameServiceController;

    move-result-object p0

    invoke-interface {p1, p0}, Landroid/service/games/IGameService;->connected(Landroid/service/games/IGameServiceController;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "GameServiceProviderInstance"

    const-string v0, "Failed to send connected event"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
