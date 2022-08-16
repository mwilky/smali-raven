.class public final Lcom/android/systemui/media/ResumeMediaBrowser$2;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "ResumeMediaBrowser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/media/ResumeMediaBrowser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/ResumeMediaBrowser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    const-string v0, "Service connected for "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->updateMediaController()V

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onConnected()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mSubscriptionCallback:Lcom/android/systemui/media/ResumeMediaBrowser$1;

    invoke-virtual {v1, v0, p0}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onConnectionFailed()V
    .locals 2

    const-string v0, "Connection failed for "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 2

    const-string v0, "Connection suspended for "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
