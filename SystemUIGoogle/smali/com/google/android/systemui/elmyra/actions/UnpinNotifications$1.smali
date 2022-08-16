.class public final Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;
.super Ljava/lang/Object;
.source "UnpinNotifications.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;->this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onHeadsUpPinnedModeChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications$1;->this$0:Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;

    iget-boolean v0, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/google/android/systemui/elmyra/actions/UnpinNotifications;->mHasPinnedHeadsUp:Z

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/actions/Action;->notifyListener()V

    :cond_0
    return-void
.end method
