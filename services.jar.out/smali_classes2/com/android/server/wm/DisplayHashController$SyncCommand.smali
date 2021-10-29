.class Lcom/android/server/wm/DisplayHashController$SyncCommand;
.super Ljava/lang/Object;
.source "DisplayHashController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/DisplayHashController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SyncCommand"
.end annotation


# static fields
.field private static final WAIT_TIME_S:I = 0x5


# instance fields
.field private final mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

.field private mResult:Landroid/os/Bundle;

.field final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand;-><init>(Lcom/android/server/wm/DisplayHashController;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$0$DisplayHashController$SyncCommand(Landroid/os/Bundle;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public synthetic lambda$run$1$DisplayHashController$SyncCommand(Ljava/util/function/BiConsumer;Landroid/service/displayhash/IDisplayHashingService;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/RemoteCallback;

    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;)V

    invoke-direct {v0, v1}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    invoke-interface {p1, p2, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public run(Ljava/util/function/BiConsumer;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "Landroid/service/displayhash/IDisplayHashingService;",
            "Landroid/os/RemoteCallback;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->this$0:Lcom/android/server/wm/DisplayHashController;

    new-instance v1, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/DisplayHashController$SyncCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/DisplayHashController$SyncCommand;Ljava/util/function/BiConsumer;)V

    invoke-static {v0, v1}, Lcom/android/server/wm/DisplayHashController;->access$300(Lcom/android/server/wm/DisplayHashController;Lcom/android/server/wm/DisplayHashController$Command;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    const-wide/16 v1, 0x5

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "WindowManager"

    const-string v2, "Failed to wait for command"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$SyncCommand;->mResult:Landroid/os/Bundle;

    return-object v0
.end method
