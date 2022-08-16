.class public final Lcom/google/android/systemui/columbus/actions/UnpinNotifications;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "UnpinNotifications.kt"


# instance fields
.field public hasPinnedHeadsUp:Z

.field public final headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

.field public final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field public final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;",
            "Ljava/util/Optional<",
            "Lcom/android/systemui/statusbar/policy/HeadsUpManager;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    const-string p1, "Columbus/UnpinNotif"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->tag:Ljava/lang/String;

    invoke-virtual {p3, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    new-instance v0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

    new-instance v0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;-><init>(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V

    if-nez p3, :cond_0

    const-string p3, "No HeadsUpManager"

    invoke-static {p1, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    :goto_0
    invoke-virtual {p2}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll()V

    :goto_0
    return-void
.end method
