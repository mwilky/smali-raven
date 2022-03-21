.class Lcom/google/android/systemui/gamedashboard/EntryPointController$4;
.super Ljava/lang/Object;
.source "EntryPointController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;-><init>(Landroid/content/Context;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Lcom/google/android/systemui/gamedashboard/GameModeDndController;Landroid/os/Handler;Lcom/android/systemui/navigationbar/NavigationModeController;Ljava/util/Optional;Lcom/android/systemui/recents/OverviewProxyService;Landroid/content/pm/PackageManager;Lcom/google/android/systemui/gamedashboard/ShortcutBarController;Lcom/google/android/systemui/gamedashboard/ToastController;Lcom/google/android/systemui/gamedashboard/GameDashboardUiEventLogger;Ljava/util/Optional;)V
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

.method public onSystemBarAttributesChanged(II[Lcom/android/internal/view/AppearanceRegion;ZILandroid/view/InsetsVisibilities;Ljava/lang/String;)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p6, p1}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p6, p3}, Landroid/view/InsetsVisibilities;->getVisibility(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    move p2, p1

    goto :goto_1

    :cond_1
    :goto_0
    move p2, p3

    :goto_1
    iget-object p4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    if-eqz p2, :cond_2

    const/4 p2, 0x2

    if-ne p5, p2, :cond_2

    move p2, p3

    goto :goto_2

    :cond_2
    move p2, p1

    :goto_2
    invoke-static {p4, p2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1002(Lcom/google/android/systemui/gamedashboard/EntryPointController;Z)Z

    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1100(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z

    move-result p2

    if-eqz p2, :cond_3

    return-void

    :cond_3
    iget-object p2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-result-object p2

    iget-object p4, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p4}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z

    move-result p4

    if-eqz p4, :cond_4

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$4;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$1200(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Z

    move-result p0

    if-nez p0, :cond_4

    move p1, p3

    :cond_4
    invoke-virtual {p2, p1}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->updateVisibility(Z)V

    return-void
.end method
