.class public final Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;
.super Lcom/google/android/systemui/elmyra/actions/Action;
.source "UnpinNotifications.java"


# instance fields
.field public mHasPinnedHeadsUp:Z

.field public final mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

.field public final mHeadsUpManagerOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;"
        }
    .end annotation
.end field

.field public mSilenceSettingEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Optional;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance p1, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    invoke-direct {p1, p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;-><init>(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->updateHeadsUpListener()V

    new-instance p1, Lcom/google/android/systemui/elmyra/UserContentObserver;

    iget-object p2, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    const-string v0, "assist_gesture_silence_alerts_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;

    const/4 v2, 0x2

    invoke-direct {v1, v2, p0}, Lcom/android/wm/shell/bubbles/BubbleController$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    const/4 p0, 0x1

    invoke-direct {p1, p2, v0, v1, p0}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;Z)V

    goto :goto_0

    :cond_0
    const-string p0, "Elmyra/UnpinNotifications"

    const-string p1, "No HeadsUpManager"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public final isAvailable()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mSilenceSettingEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$DetectionProperties;)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda2;-><init>(I)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    invoke-super {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateHeadsUpListener()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/Action;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x1

    const-string v3, "assist_gesture_silence_alerts_enabled"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mSilenceSettingEnabled:Z

    if-eq v0, v2, :cond_3

    iput-boolean v2, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mSilenceSettingEnabled:Z

    if-eqz v2, :cond_2

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    iput-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    goto :goto_1

    :cond_2
    iput-boolean v1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpManagerOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHeadsUpChangedListener:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_3
    return-void
.end method
