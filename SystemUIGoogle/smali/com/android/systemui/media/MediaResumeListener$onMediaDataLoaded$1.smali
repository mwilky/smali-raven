.class public final Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "MediaResumeListener.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaResumeListener;->onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/MediaData;ZIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $inf:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/media/MediaResumeListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iput-object p2, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$inf:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/MediaResumeListener;

    iget-object v1, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/media/MediaResumeListener$onMediaDataLoaded$1;->$inf:Ljava/util/List;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/ComponentInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string p0, "Testing if we can connect to "

    invoke-static {v5, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "MediaResumeListener"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, v0, Lcom/android/systemui/media/MediaResumeListener;->mediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move-object p0, v2

    :cond_0
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/media/MediaDataManager;->setResumeAction(Lcom/android/systemui/media/MediaResumeListener$getResumeAction$1;Ljava/lang/String;)V

    iget-object p0, v0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowserFactory:Lcom/android/systemui/media/ResumeMediaBrowserFactory;

    new-instance v4, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;

    invoke-direct {v4, v5, v0, v1}, Lcom/android/systemui/media/MediaResumeListener$tryUpdateResumptionList$1;-><init>(Landroid/content/ComponentName;Lcom/android/systemui/media/MediaResumeListener;Ljava/lang/String;)V

    new-instance v1, Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v3, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object v7, p0, Lcom/android/systemui/media/ResumeMediaBrowserFactory;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/media/ResumeMediaBrowser;-><init>(Landroid/content/Context;Lcom/android/systemui/media/ResumeMediaBrowser$Callback;Landroid/content/ComponentName;Lcom/android/systemui/media/MediaBrowserFactory;Lcom/android/systemui/media/ResumeMediaBrowserLogger;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/media/MediaResumeListener;->setMediaBrowser(Lcom/android/systemui/media/ResumeMediaBrowser;)V

    iget-object p0, v0, Lcom/android/systemui/media/MediaResumeListener;->mediaBrowser:Lcom/android/systemui/media/ResumeMediaBrowser;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const/4 v1, 0x1

    const-string v2, "android.service.media.extra.RECENT"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mBrowserFactory:Lcom/android/systemui/media/MediaBrowserFactory;

    iget-object v2, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mConnectionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$2;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Landroid/media/browse/MediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/MediaBrowserFactory;->mContext:Landroid/content/Context;

    invoke-direct {v4, v1, v2, v3, v0}, Landroid/media/browse/MediaBrowser;-><init>(Landroid/content/Context;Landroid/content/ComponentName;Landroid/media/browse/MediaBrowser$ConnectionCallback;Landroid/os/Bundle;)V

    iput-object v4, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->updateMediaController()V

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mLogger:Lcom/android/systemui/media/ResumeMediaBrowserLogger;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    const-string/jumbo v2, "testConnection"

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/ResumeMediaBrowserLogger;->logConnection(Landroid/content/ComponentName;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {p0}, Landroid/media/browse/MediaBrowser;->connect()V

    :goto_0
    return-void
.end method
