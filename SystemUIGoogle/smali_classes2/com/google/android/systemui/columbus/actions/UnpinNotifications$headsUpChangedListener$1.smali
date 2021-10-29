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
.field final synthetic this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-static {v0, p1}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->access$setHasPinnedHeadsUp$p(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;Z)V

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/UnpinNotifications$headsUpChangedListener$1;->this$0:Lcom/google/android/systemui/columbus/actions/UnpinNotifications;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/actions/UnpinNotifications;->access$updateAvailable(Lcom/google/android/systemui/columbus/actions/UnpinNotifications;)V

    return-void
.end method
