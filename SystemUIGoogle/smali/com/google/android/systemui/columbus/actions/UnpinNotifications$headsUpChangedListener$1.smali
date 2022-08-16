.class public final Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;
.super Ljava/lang/Object;
.source "UnpinNotifications.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


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

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    iput-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    iget-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->silenceAlertsDisabled:Lcom/google/android/systemui/columbus/gates/SilenceAlertsDisabled;

    invoke-virtual {p1}, Lcom/google/android/systemui/columbus/gates/Gate;->isBlocking()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->hasPinnedHeadsUp:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/systemui/columbus/actions/Action;->setAvailable(Z)V

    return-void
.end method
