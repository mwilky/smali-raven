.class public Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;
.super Ljava/lang/Object;
.source "NotificationIconCenteringController.java"

# interfaces
.implements Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEventListener;


# instance fields
.field private mEntryCentered:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field protected mIsSkipGestureEnabled:Z
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mMainThreadHandler:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field protected mMusicPlayingPkg:Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mRegistered:Z

.field protected final mResetCenteredIconRunnable:Ljava/lang/Runnable;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$DfJV11mmYfVTa59b1fkeD6HpFtU(Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->lambda$onSensorChanged$1(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V

    return-void
.end method

.method private isMusicPlaying()Z
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mMusicPlayingPkg:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSkipGestureEnabled()Z
    .locals 0

    iget-boolean p0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mIsSkipGestureEnabled:Z

    return p0
.end method

.method private synthetic lambda$onSensorChanged$1(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 2

    invoke-virtual {p1}, Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;->getValues()[F

    move-result-object p1

    const/4 v0, 0x0

    aget p1, p1, v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mIsSkipGestureEnabled:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->updateCenteredIcon()V

    return-void
.end method

.method private showIconCentered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mResetCenteredIconRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mResetCenteredIconRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0xfa

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->showIconCentered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    iput-object p1, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mEntryCentered:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotifIconCenterContr"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\nisMusicPlaying: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->isMusicPlaying()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\nisSkipGestureEnabled: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->isSkipGestureEnabled()Z

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\nmSkipStatusRegistered: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mRegistered:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\nmEntryCentered: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mEntryCentered:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "\n"

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    return-void
.end method

.method public onSensorChanged(Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mMainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;Lcom/android/systemui/plugins/SensorManagerPlugin$SensorEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected updateCenteredIcon()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->isMusicPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->isSkipGestureEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->isMediaNotification()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->mMusicPlayingPkg:Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v1}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->showIconCentered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/systemui/statusbar/phone/NotificationIconCenteringController;->showIconCentered(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
