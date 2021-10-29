.class Lcom/google/android/systemui/gamedashboard/EntryPointController$4;
.super Ljava/lang/Object;
.source "EntryPointController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;-><init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Ljava/util/Optional;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecentsAnimationStateChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$802(Lcom/google/android/systemui/gamedashboard/EntryPointController;Z)Z

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$900(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZIZ)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    if-eqz p6, :cond_0

    const/4 p2, 0x2

    if-ne p5, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-static {p1, p2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1002(Lcom/google/android/systemui/gamedashboard/EntryPointController;Z)Z

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1100(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    return-void
.end method
