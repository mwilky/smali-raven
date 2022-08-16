.class public final Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;
.super Ljava/lang/Object;
.source "StatusBarUserInfoTracker.kt"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/statusbar/policy/CallbackController<",
        "Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;",
        ">;",
        "Lcom/android/systemui/Dumpable;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStatusBarUserInfoTracker.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StatusBarUserInfoTracker.kt\ncom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,135:1\n1849#2,2:136\n1849#2,2:138\n*S KotlinDebug\n*F\n+ 1 StatusBarUserInfoTracker.kt\ncom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker\n*L\n84#1:136,2\n90#1:138,2\n*E\n"
.end annotation


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public currentUserAvatar:Landroid/graphics/drawable/Drawable;

.field public currentUserName:Ljava/lang/String;

.field public final listeners:Ljava/util/ArrayList;

.field public listening:Z

.field public final mainExecutor:Ljava/util/concurrent/Executor;

.field public final userInfoChangedListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;

.field public final userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

.field public final userManager:Landroid/os/UserManager;

.field public userSwitcherEnabled:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/UserInfoController;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userManager:Landroid/os/UserManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->mainExecutor:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    new-instance p1, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;-><init>(Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoChangedListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;

    const-string p1, "StatusBarUserInfoTracker"

    invoke-virtual {p3, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listening:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoChangedListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->addCallback(Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;)V

    return-void
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userSwitcherEnabled:Z

    const-string v0, "  userSwitcherEnabled="

    invoke-static {p2, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listening:Z

    const-string p2, "  listening="

    invoke-static {p0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(ZLjava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lcom/android/systemui/statusbar/phone/userswitcher/CurrentUserChipInfoUpdatedListener;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->listening:Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker;->userInfoChangedListener:Lcom/android/systemui/statusbar/phone/userswitcher/StatusBarUserInfoTracker$userInfoChangedListener$1;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
