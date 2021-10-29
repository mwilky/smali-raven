.class Lcom/google/android/systemui/gamedashboard/EntryPointController$2;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "EntryPointController.java"


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
.method constructor <init>(Lcom/google/android/systemui/gamedashboard/EntryPointController;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$400(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$300(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/database/ContentObserver;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v0, p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$502(Lcom/google/android/systemui/gamedashboard/EntryPointController;I)I

    iget-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$600(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "game_dashboard_always_on"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v1}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$300(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Landroid/database/ContentObserver;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v2}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$500(Lcom/google/android/systemui/gamedashboard/EntryPointController;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$2;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {p0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$700(Lcom/google/android/systemui/gamedashboard/EntryPointController;)V

    return-void
.end method
