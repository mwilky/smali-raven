.class Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;
.super Ljava/lang/Object;
.source "UnpinNotifications.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;->this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHeadsUpPinnedModeChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;->this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    invoke-static {v0}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->access$000(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;->this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    invoke-static {v0, p1}, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->access$002(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;->this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    return-void
.end method
