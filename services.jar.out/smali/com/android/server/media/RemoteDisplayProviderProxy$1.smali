.class public Lcom/android/server/media/RemoteDisplayProviderProxy$1;
.super Ljava/lang/Object;
.source "RemoteDisplayProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/RemoteDisplayProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;


# direct methods
.method public constructor <init>(Lcom/android/server/media/RemoteDisplayProviderProxy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fputmScheduledDisplayStateChangedCallback(Lcom/android/server/media/RemoteDisplayProviderProxy;Z)V

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmDisplayStateCallback(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {v0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmDisplayStateCallback(Lcom/android/server/media/RemoteDisplayProviderProxy;)Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;->this$0:Lcom/android/server/media/RemoteDisplayProviderProxy;

    invoke-static {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->-$$Nest$fgetmDisplayState(Lcom/android/server/media/RemoteDisplayProviderProxy;)Landroid/media/RemoteDisplayState;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;->onDisplayStateChanged(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/RemoteDisplayState;)V

    :cond_0
    return-void
.end method
