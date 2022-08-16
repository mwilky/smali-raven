.class public final Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$2;
.super Ljava/lang/Object;
.source "VisualStabilityManager.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;-><init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/provider/VisualStabilityProvider;Landroid/os/Handler;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/dump/DumpManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onExpandedChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPanelExpanded:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->updateAllowedStates()V

    return-void
.end method

.method public final onPulsingChanged(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPulsing:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->mPulsing:Z

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->updateAllowedStates()V

    :goto_0
    return-void
.end method
