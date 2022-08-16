.class public final Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;
.super Ljava/lang/Object;
.source "MediaResumeListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaResumeListener;Landroid/content/ComponentName;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object v1, v0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    iget-object v5, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->$componentName:Landroid/content/ComponentName;

    new-instance v8, Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v3, v1, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v6, v1, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object v7, v1, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    const/4 v4, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/media/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/MediaBrowserFactory;Lcom/android/systemui/media/ResumeMediaBrowserLogger;)V

    invoke-virtual {v0, v8}, Lcom/android/systemui/media/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "android.service.media.extra.RECENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    new-instance v3, Lcom/android/systemui/media/ResumeMediaBrowser$3;

    invoke-direct {v3, p0}, Lcom/android/systemui/media/ResumeMediaBrowser$3;-><init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/media/browse/MediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/MediaBrowserFactory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->updateMediaController()V

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    const-string/jumbo v2, "restart"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->logConnection(Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    :goto_0
    return-void
.end method
