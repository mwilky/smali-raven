.class final Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/MediaSessionService$FullUserRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnMediaKeyEventSessionChangedListenerRecord"
.end annotation


# instance fields
.field public final callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

.field public final uid:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$FullUserRecord;Landroid/media/session/IOnMediaKeyEventSessionChangedListener;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    iput p3, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->uid:I

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    iget-object v0, v0, Lcom/android/server/media/MediaSessionService$FullUserRecord;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v0}, Lcom/android/server/media/MediaSessionService;->access$100(Lcom/android/server/media/MediaSessionService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->this$1:Lcom/android/server/media/MediaSessionService$FullUserRecord;

    invoke-static {v1}, Lcom/android/server/media/MediaSessionService$FullUserRecord;->access$1900(Lcom/android/server/media/MediaSessionService$FullUserRecord;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$FullUserRecord$OnMediaKeyEventSessionChangedListenerRecord;->callback:Landroid/media/session/IOnMediaKeyEventSessionChangedListener;

    invoke-interface {v2}, Landroid/media/session/IOnMediaKeyEventSessionChangedListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
