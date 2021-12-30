.class Lcom/google/android/settings/games/GameDashboardAlwaysOnController$1;
.super Landroid/database/ContentObserver;
.source "GameDashboardAlwaysOnController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/settings/games/GameDashboardAlwaysOnController;-><init>(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/settings/games/GameDashboardAlwaysOnController;


# direct methods
.method constructor <init>(Lcom/google/android/settings/games/GameDashboardAlwaysOnController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/settings/games/GameDashboardAlwaysOnController$1;->this$0:Lcom/google/android/settings/games/GameDashboardAlwaysOnController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, Lcom/google/android/settings/games/GameDashboardAlwaysOnController$1;->this$0:Lcom/google/android/settings/games/GameDashboardAlwaysOnController;

    invoke-static {p1}, Lcom/google/android/settings/games/GameDashboardAlwaysOnController;->access$000(Lcom/google/android/settings/games/GameDashboardAlwaysOnController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/google/android/settings/games/GameDashboardAlwaysOnController$1;->this$0:Lcom/google/android/settings/games/GameDashboardAlwaysOnController;

    invoke-static {p0}, Lcom/google/android/settings/games/GameDashboardAlwaysOnController;->access$100(Lcom/google/android/settings/games/GameDashboardAlwaysOnController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    const-string v1, "game_dashboard_always_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2, p0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    invoke-virtual {p1, v2}, Lcom/google/android/settings/games/GameDashboardAlwaysOnController;->setChecked(Z)Z

    return-void
.end method
