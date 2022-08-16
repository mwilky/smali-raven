.class public final Lcom/android/systemui/media/ResumeMediaBrowser$3;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "ResumeMediaBrowser.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/ResumeMediaBrowser;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/ResumeMediaBrowser;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConnected()V
    .locals 2

    const-string v0, "Connected for restart "

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v1, v1, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v1}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ResumeMediaBrowser"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->updateMediaController()V

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->isBrowserConnected()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/ResumeMediaBrowser;->createMediaController(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onConnected()V

    :cond_2
    return-void
.end method

.method public final onConnectionFailed()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method

.method public final onConnectionSuspended()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    iget-object v0, v0, Lcom/android/systemui/media/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/ResumeMediaBrowser$Callback;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/media/ResumeMediaBrowser$Callback;->onError()V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/ResumeMediaBrowser$3;->this$0:Lcom/android/systemui/media/ResumeMediaBrowser;

    invoke-virtual {p0}, Lcom/android/systemui/media/ResumeMediaBrowser;->disconnect()V

    return-void
.end method
