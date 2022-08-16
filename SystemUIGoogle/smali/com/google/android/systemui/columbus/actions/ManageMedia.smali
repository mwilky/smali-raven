.class public final Lcom/google/android/systemui/columbus/actions/ManageMedia;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "ManageMedia.kt"


# instance fields
.field public final audioManager:Landroid/media/AudioManager;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/ManageMedia"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->tag:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final availableOnLockscreen()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final availableOnScreenOff()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 14

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p1

    const/4 v5, 0x0

    const/4 v11, 0x1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActiveRemotely()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v5

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v11

    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iget-object v8, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    new-instance v12, Landroid/view/KeyEvent;

    const/16 v6, 0x55

    const/4 v7, 0x0

    move-object v0, v12

    move-wide v1, v9

    move-wide v3, v9

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v8, v12}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->audioManager:Landroid/media/AudioManager;

    new-instance v1, Landroid/view/KeyEvent;

    const/16 v12, 0x55

    const/4 v13, 0x0

    move-object v6, v1

    move-wide v7, v9

    invoke-direct/range {v6 .. v13}, Landroid/view/KeyEvent;-><init>(JJIII)V

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->dispatchMediaKeyEvent(Landroid/view/KeyEvent;)V

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PAUSE_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    goto :goto_2

    :cond_2
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/ManageMedia;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_PLAY_MEDIA:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    :goto_2
    return-void
.end method
