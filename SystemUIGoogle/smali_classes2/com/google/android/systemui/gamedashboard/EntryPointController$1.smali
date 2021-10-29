.class Lcom/google/android/systemui/gamedashboard/EntryPointController$1;
.super Ljava/lang/Object;
.source "EntryPointController.java"

# interfaces
.implements Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/gamedashboard/EntryPointController;
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

    iput-object p1, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSwipeUpGestureStarted()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    invoke-static {v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$000(Lcom/google/android/systemui/gamedashboard/EntryPointController;)Lcom/google/android/systemui/gamedashboard/ShortcutBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/systemui/gamedashboard/ShortcutBarController;->hide()V

    iget-object p0, p0, Lcom/google/android/systemui/gamedashboard/EntryPointController$1;->this$0:Lcom/google/android/systemui/gamedashboard/EntryPointController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/android/systemui/gamedashboard/EntryPointController;->access$102(Lcom/google/android/systemui/gamedashboard/EntryPointController;Landroid/app/ActivityManager$RunningTaskInfo;)Landroid/app/ActivityManager$RunningTaskInfo;

    return-void
.end method
