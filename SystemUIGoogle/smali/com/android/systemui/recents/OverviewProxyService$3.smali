.class Lcom/android/systemui/recents/OverviewProxyService$3;
.super Ljava/lang/Object;
.source "OverviewProxyService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/recents/OverviewProxyService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/recents/OverviewProxyService;


# direct methods
.method public static synthetic $r8$lambda$D7k0SdZE7Jm1jghiZ8MKES35aak(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$1(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DMUd7SrICwXW9JRW-D-lpcN2KRE(Landroid/os/Bundle;Lcom/android/wm/shell/pip/Pip;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$0(Landroid/os/Bundle;Lcom/android/wm/shell/pip/Pip;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SXL0Y4LqlnCtirZsikgebICdWrs(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$2(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/OneHanded;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e6_XSg3m84Lwc4989V0A9MUakvI(Landroid/os/Bundle;Lcom/android/wm/shell/recents/RecentTasks;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$4(Landroid/os/Bundle;Lcom/android/wm/shell/recents/RecentTasks;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lK9_FRvhZxCwKpXcG6Mz3PJjpB8(Landroid/os/Bundle;Lcom/android/wm/shell/startingsurface/StartingSurface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService$3;->lambda$onServiceConnected$3(Landroid/os/Bundle;Lcom/android/wm/shell/startingsurface/StartingSurface;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/recents/OverviewProxyService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$0(Landroid/os/Bundle;Lcom/android/wm/shell/pip/Pip;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/wm/shell/pip/Pip;->createExternalInterface()Lcom/android/wm/shell/pip/IPip;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_pip"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$1(Landroid/os/Bundle;Lcom/android/wm/shell/splitscreen/SplitScreen;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/wm/shell/splitscreen/SplitScreen;->createExternalInterface()Lcom/android/wm/shell/splitscreen/ISplitScreen;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_split_screen"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$2(Landroid/os/Bundle;Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/wm/shell/onehanded/OneHanded;->createExternalInterface()Lcom/android/wm/shell/onehanded/IOneHanded;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_one_handed"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$3(Landroid/os/Bundle;Lcom/android/wm/shell/startingsurface/StartingSurface;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/wm/shell/startingsurface/StartingSurface;->createExternalInterface()Lcom/android/wm/shell/startingsurface/IStartingWindow;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "extra_shell_starting_window"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method private static synthetic lambda$onServiceConnected$4(Landroid/os/Bundle;Lcom/android/wm/shell/recents/RecentTasks;)V
    .locals 1

    invoke-interface {p1}, Lcom/android/wm/shell/recents/RecentTasks;->createExternalInterface()Lcom/android/wm/shell/recents/IRecentTasks;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "recent_tasks"

    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Binding died of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$502(Lcom/android/systemui/recents/OverviewProxyService;I)I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2700(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null binding of \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\', try reconnecting"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OverviewProxyService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$502(Lcom/android/systemui/recents/OverviewProxyService;I)I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2700(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string p1, "OverviewProxyService"

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2302(Lcom/android/systemui/recents/OverviewProxyService;I)I

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$300(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2500(Lcom/android/systemui/recents/OverviewProxyService;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    invoke-interface {p2, v0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-virtual {v0}, Lcom/android/systemui/settings/CurrentUserTracker;->getCurrentUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$502(Lcom/android/systemui/recents/OverviewProxyService;I)I

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p2}, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$2802(Lcom/android/systemui/recents/OverviewProxyService;Lcom/android/systemui/shared/recents/IOverviewProxy;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mSysUiProxy:Lcom/android/systemui/shared/recents/ISystemUiProxy;

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "extra_sysui_proxy"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2900(Lcom/android/systemui/recents/OverviewProxyService;)F

    move-result v0

    const-string v1, "extra_window_corner_radius"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3000(Lcom/android/systemui/recents/OverviewProxyService;)Z

    move-result v0

    const-string v1, "extra_supports_window_corners"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$900(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda1;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda1;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3100(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda3;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3200(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda0;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3300(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/wm/shell/transition/ShellTransitions;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/wm/shell/transition/ShellTransitions;->createExternalInterface()Lcom/android/wm/shell/transition/IShellTransitions;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "extra_shell_shell_transitions"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3400(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda4;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda4;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3500(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;->createExternalInterface()Lcom/android/systemui/shared/system/smartspace/ISmartspaceTransitionController;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "smartspace_transition"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$3600(Lcom/android/systemui/recents/OverviewProxyService;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;

    invoke-direct {v1, p2}, Lcom/android/systemui/recents/OverviewProxyService$3$$ExternalSyntheticLambda2;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {v0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2800(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/shared/recents/IOverviewProxy;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/android/systemui/shared/recents/IOverviewProxy;->onInitialize(Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/systemui/recents/OverviewProxyService;->access$502(Lcom/android/systemui/recents/OverviewProxyService;I)I

    const-string v0, "Failed to call onInitialize()"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$3700(Lcom/android/systemui/recents/OverviewProxyService;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$3800(Lcom/android/systemui/recents/OverviewProxyService;)V

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$3900(Lcom/android/systemui/recents/OverviewProxyService;)Lcom/android/systemui/model/SysUiState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/model/SysUiState;->getFlags()I

    move-result p2

    invoke-static {p1, p2}, Lcom/android/systemui/recents/OverviewProxyService;->access$4000(Lcom/android/systemui/recents/OverviewProxyService;I)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$4100(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void

    :catch_1
    move-exception p2

    const-string v0, "Lost connection to launcher service"

    invoke-static {p1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object p1, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$2600(Lcom/android/systemui/recents/OverviewProxyService;)V

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    invoke-static {p0}, Lcom/android/systemui/recents/OverviewProxyService;->access$2700(Lcom/android/systemui/recents/OverviewProxyService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    const-string p1, "OverviewProxyService"

    const-string v0, "Service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService$3;->this$0:Lcom/android/systemui/recents/OverviewProxyService;

    const/4 p1, -0x1

    invoke-static {p0, p1}, Lcom/android/systemui/recents/OverviewProxyService;->access$502(Lcom/android/systemui/recents/OverviewProxyService;I)I

    return-void
.end method
