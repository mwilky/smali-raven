.class Lcom/android/server/audio/MediaFocusControl$3;
.super Landroid/os/Handler;
.source "MediaFocusControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/audio/MediaFocusControl;->initFocusThreading()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/MediaFocusControl;


# direct methods
.method constructor <init>(Lcom/android/server/audio/MediaFocusControl;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;

    invoke-static {v0}, Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;->access$1000(Lcom/android/server/audio/MediaFocusControl$ForgetFadeUidInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-static {v1}, Lcom/android/server/audio/MediaFocusControl;->access$800(Lcom/android/server/audio/MediaFocusControl;)Lcom/android/server/audio/PlayerFocusEnforcer;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/android/server/audio/PlayerFocusEnforcer;->forgetUid(I)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/android/server/audio/MediaFocusControl;->access$000()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/audio/FocusRequester;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->isInFocusLossLimbo()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/server/audio/FocusRequester;->dispatchFocusChange(I)I

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->release()V

    iget-object v2, p0, Lcom/android/server/audio/MediaFocusControl$3;->this$0:Lcom/android/server/audio/MediaFocusControl;

    invoke-virtual {v1}, Lcom/android/server/audio/FocusRequester;->getClientUid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/audio/MediaFocusControl;->access$900(Lcom/android/server/audio/MediaFocusControl;I)V

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
