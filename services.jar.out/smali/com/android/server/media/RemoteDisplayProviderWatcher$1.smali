.class public Lcom/android/server/media/RemoteDisplayProviderWatcher$1;
.super Landroid/content/BroadcastReceiver;
.source "RemoteDisplayProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderWatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Received package manager broadcast: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RemoteDisplayProvider"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderWatcher$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderWatcher;

    invoke-static {p0}, Lcom/android/server/media/RemoteDisplayProviderWatcher;->-$$Nest$mscanPackages(Lcom/android/server/media/RemoteDisplayProviderWatcher;)V

    return-void
.end method
