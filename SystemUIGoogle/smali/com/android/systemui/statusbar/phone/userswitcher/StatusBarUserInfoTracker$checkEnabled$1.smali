.class public final Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$checkEnabled$1;
.super Ljava/lang/Object;
.source "StatusBarUserInfoTracker.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$checkEnabled$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$checkEnabled$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userSwitcherEnabled:Z

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userSwitcherEnabled:Z

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$checkEnabled$1;->this$0:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userSwitcherEnabled:Z

    if-eq v1, v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->mainExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$checkEnabled$1$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$checkEnabled$1$1;-><init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
