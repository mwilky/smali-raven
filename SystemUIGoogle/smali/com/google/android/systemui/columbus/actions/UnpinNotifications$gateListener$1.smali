.class public final Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;
.super Ljava/lang/Object;
.source "UnpinNotifications.kt"

# interfaces
.implements Lcom/google/android/systemui/columbus/gates/Gate$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/actions/UnpinNotifications;-><init>(Landroid/content/Context;Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;Ljava/util/Optional;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGateChanged(Lcom/google/android/systemui/columbus/gates/Gate;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    iget-object p1, p1, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez p1, :cond_0

    goto :goto_2

    :cond_0
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

    iget-object p1, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mListeners:Lcom/android/systemui/util/ListenerSet;

    invoke-virtual {p1, p0}, Lcom/android/systemui/util/ListenerSet;->remove(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$gateListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpChangedListener:Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    :goto_0
    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->headsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mHasPinnedNotification:Z

    :goto_1
    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    :goto_2
    return-void
.end method
