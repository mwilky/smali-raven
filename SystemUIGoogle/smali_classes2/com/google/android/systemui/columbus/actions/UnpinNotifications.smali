.class public final Lcom/google/android/systemui/columbus/actions/UnpinNotifications;
.super Lcom/google/android/systemui/columbus/actions/Action;
.source "UnpinNotifications.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/actions/UnpinNotifications$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$Companion;


# instance fields
.field private final gateListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;

.field private hasPinnedHeadsUp:Z

.field private final headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

.field private final headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

.field private final tag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->Companion:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ljava/util/Optional;)V
    .locals 2
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

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "silenceAlertsDisabled"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "headsUpManagerOptional"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/google/android/systemui/columbus/actions/Action;-><init>(Landroid/content/Context;Ljava/util/Set;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

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

    iput-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->gateListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;

    if-nez p3, :cond_0

    const-string p2, "No HeadsUpManager"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p2, v0}, Lcom/google/android/systemui/columbus/gates/Gate;->registerListener(Lcom/google/android/systemui/columbus/gates/Gate$Listener;)V

    :goto_0
    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->updateAvailable()V

    return-void
.end method

.method public static final synthetic access$getSilenceAlertsDisabled$p(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    return-object p0
.end method

.method public static final synthetic access$onSilenceAlertsDisabled(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->onSilenceAlertsDisabled()V

    return-void
.end method

.method public static final synthetic access$onSilenceAlertsEnabled(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->onSilenceAlertsEnabled()V

    return-void
.end method

.method public static final synthetic access$setHasPinnedHeadsUp$p(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    return-void
.end method

.method public static final synthetic access$updateAvailable(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->updateAvailable()V

    return-void
.end method

.method private final onSilenceAlertsDisabled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->removeListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    :goto_0
    return-void
.end method

.method private final onSilenceAlertsEnabled()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    return-void
.end method

.method private final updateAvailable()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {v0}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->unpinAll(Z)V

    :goto_0
    return-void
.end method
