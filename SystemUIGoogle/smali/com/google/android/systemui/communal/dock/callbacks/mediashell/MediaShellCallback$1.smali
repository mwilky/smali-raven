.class public final Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;
.super Ljava/lang/Object;
.source "MediaShellCallback.java"

# interfaces
.implements Lcom/android/systemui/util/service/ObservableServiceConnection$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/util/service/ObservableServiceConnection$Callback<",
        "Landroid/os/IBinder;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/os/IBinder;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;

    iget-object p1, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mMediaShellComplication:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;

    invoke-virtual {p1, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addComplication(Lcom/android/systemui/dreams/complication/Complication;)V

    return-void
.end method

.method public final onDisconnected()V
    .locals 4

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback$1;->this$0:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;

    iget-object v0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mDreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    iget-object p0, p0, Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellCallback;->mMediaShellComplication:Lcom/google/android/systemui/communal/dock/callbacks/mediashell/MediaShellComplication;

    iget-object v1, v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;

    const/4 v3, 0x2

    invoke-direct {v2, v3, v0, p0}, Lcom/android/wm/shell/TaskView$$ExternalSyntheticLambda10;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
