.class public final Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaResumeListener.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/media/ResumeMediaBrowserFactory;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/util/time/SystemClock;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaResumeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-boolean p1, p0, Lcom/android/systemui/media/MediaResumeListener;->useMediaResumption:Z

    if-nez p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    invoke-interface {p1}, Lcom/android/systemui/util/time/SystemClock;->currentTimeMillis()J

    move-result-wide p1

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener;->resumeComponents:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    sget-wide v4, Lcom/android/systemui/media/MediaTimeoutListenerKt;->RESUME_MEDIA_TIMEOUT:J

    cmp-long v2, v2, v4

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    iget-object v5, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserCallback:Lcom/android/systemui/media/MediaResumeListener$mediaBrowserCallback$1;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/content/ComponentName;

    new-instance v1, Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v4, v2, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v7, v2, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object v8, v2, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/media/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/MediaBrowserFactory;Lcom/android/systemui/media/ResumeMediaBrowserLogger;)V

    invoke-virtual {v1}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x1

    const-string v4, "android.service.media.extra.RECENT"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object v4, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v5, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mConnectionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$2;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Landroid/media/browse/MediaBrowser;

    iget-object v3, v3, Lcom/android/systemui/media/MediaBrowserFactory;->mContext:Landroid/content/Context;

    invoke-direct {v6, v3, v4, v5, v2}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v6, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Lcom/android/systemui/media/ResumeMediaBrowser;->updateMediaController()V

    iget-object v2, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    iget-object v3, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    const-string v4, "findRecentMedia"

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->logConnection(Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->connect()V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    const/4 v0, -0x1

    const-string v1, "android.intent.extra.user_handle"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p1, Lcom/android/systemui/media/MediaResumeListener;->currentUserId:I

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$userChangeReceiver$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    invoke-virtual {p0}, Lcom/android/systemui/media/MediaResumeListener;->loadSavedComponents()V

    :cond_3
    :goto_1
    return-void
.end method
