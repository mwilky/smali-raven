.class Lcom/android/server/NsdService$NsdStateMachine;
.super Lcom/android/internal/util/StateMachine;
.source "NsdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/NsdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NsdStateMachine"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/NsdService$NsdStateMachine$EnabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$DisabledState;,
        Lcom/android/server/NsdService$NsdStateMachine$DefaultState;
    }
.end annotation


# instance fields
.field private final mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

.field private final mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

.field private final mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

.field final synthetic this$0:Lcom/android/server/NsdService;


# direct methods
.method constructor <init>(Lcom/android/server/NsdService;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-direct {p0, p2, p3}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    invoke-direct {v0, p0}, Lcom/android/server/NsdService$NsdStateMachine$DefaultState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDefaultState:Lcom/android/server/NsdService$NsdStateMachine$DefaultState;

    new-instance v1, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    invoke-direct {v1, p0}, Lcom/android/server/NsdService$NsdStateMachine$DisabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v1, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    new-instance v2, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    invoke-direct {v2, p0}, Lcom/android/server/NsdService$NsdStateMachine$EnabledState;-><init>(Lcom/android/server/NsdService$NsdStateMachine;)V

    iput-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;)V

    invoke-virtual {p0, v1, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-virtual {p0, v2, v0}, Lcom/android/server/NsdService$NsdStateMachine;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    invoke-static {p1}, Lcom/android/server/NsdService;->access$400(Lcom/android/server/NsdService;)Z

    move-result p1

    if-eqz p1, :cond_0

    move-object v1, v2

    :cond_0
    move-object p1, v1

    invoke-virtual {p0, p1}, Lcom/android/server/NsdService$NsdStateMachine;->setInitialState(Lcom/android/internal/util/State;)V

    const/16 v0, 0x19

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->setLogRecSize(I)V

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->registerForNsdSetting()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->maybeScheduleStop()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->cancelStop()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->maybeStartDaemon()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$EnabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mEnabledState:Lcom/android/server/NsdService$NsdStateMachine$EnabledState;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/NsdService$NsdStateMachine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->scheduleStop()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/NsdService$NsdStateMachine;)Lcom/android/server/NsdService$NsdStateMachine$DisabledState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->mDisabledState:Lcom/android/server/NsdService$NsdStateMachine$DisabledState;

    return-object v0
.end method

.method private cancelStop()V
    .locals 1

    const v0, 0x60015

    invoke-virtual {p0, v0}, Lcom/android/server/NsdService$NsdStateMachine;->removeMessages(I)V

    return-void
.end method

.method private isAnyRequestActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$100(Lcom/android/server/NsdService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private maybeScheduleStop()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->isAnyRequestActive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$300(Lcom/android/server/NsdService;)I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->scheduleStop()V

    :cond_0
    return-void
.end method

.method private maybeStartDaemon()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$000(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$DaemonConnection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/NsdService$DaemonConnection;->maybeStart()V

    invoke-direct {p0}, Lcom/android/server/NsdService$NsdStateMachine;->maybeScheduleStop()V

    return-void
.end method

.method private registerForNsdSetting()V
    .locals 3

    new-instance v0, Lcom/android/server/NsdService$NsdStateMachine$1;

    invoke-virtual {p0}, Lcom/android/server/NsdService$NsdStateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/NsdService$NsdStateMachine$1;-><init>(Lcom/android/server/NsdService$NsdStateMachine;Landroid/os/Handler;)V

    const-string/jumbo v1, "nsd_on"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v2}, Lcom/android/server/NsdService;->access$600(Lcom/android/server/NsdService;)Lcom/android/server/NsdService$NsdSettings;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/server/NsdService$NsdSettings;->registerContentObserver(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return-void
.end method

.method private scheduleStop()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/NsdService$NsdStateMachine;->this$0:Lcom/android/server/NsdService;

    invoke-static {v0}, Lcom/android/server/NsdService;->access$200(Lcom/android/server/NsdService;)J

    move-result-wide v0

    const v2, 0x60015

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/NsdService$NsdStateMachine;->sendMessageDelayed(IJ)V

    return-void
.end method


# virtual methods
.method protected getWhatToString(I)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Landroid/net/nsd/NsdManager;->nameOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
