.class public final Lcom/google/android/systemui/dreamliner/DockObserver$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "DockObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/dreamliner/DockObserver;-><init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastSender;Ljava/util/Optional;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/google/android/systemui/dreamliner/DockAlignmentController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

.field public final synthetic val$context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockObserver;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iput-object p3, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public final onUserSwitched(I)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->val$context:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/google/android/systemui/dreamliner/DockObserver;->-$$Nest$mstopDreamlinerService(Lcom/google/android/systemui/dreamliner/DockObserver;Landroid/content/Context;)V

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->this$0:Lcom/google/android/systemui/dreamliner/DockObserver;

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockObserver$1;->val$context:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/dreamliner/DockObserver;->updateCurrentDockingStatus(Landroid/content/Context;)V

    return-void
.end method
