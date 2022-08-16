.class public final Lcom/google/android/systemui/columbus/actions/LaunchOverview;
.super Lcom/google/android/systemui/columbus/actions/UserAction;
.source "LaunchOverview.kt"


# instance fields
.field public final recents:Lcom/android/systemui/recents/Recents;

.field public final tag:Ljava/lang/String;

.field public final uiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/Recents;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/columbus/actions/UserAction;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;->recents:Lcom/android/systemui/recents/Recents;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    const-string p1, "Columbus/LaunchOverview"

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;->tag:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method


# virtual methods
.method public final getTag$vendor__unbundled_google__packages__SystemUIGoogle__android_common__sysuig()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;->tag:Ljava/lang/String;

    return-object p0
.end method

.method public final onTrigger(Lcom/google/android/systemui/columbus/sensors/GestureSensor$DetectionProperties;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;->recents:Lcom/android/systemui/recents/Recents;

    invoke-virtual {p1}, Lcom/android/systemui/recents/Recents;->toggleRecentApps()V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOverview;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/google/android/systemui/columbus/ColumbusEvent;->COLUMBUS_INVOKED_OVERVIEW:Lcom/google/android/systemui/columbus/ColumbusEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
