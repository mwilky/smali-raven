.class public Lcom/google/android/systemui/elmyra/ElmyraService;
.super Ljava/lang/Object;
.source "ElmyraService.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;
    }
.end annotation


# instance fields
.field private final mActionListener:Lcom/google/android/systemui/elmyra/actions/Action$Listener;

.field private final mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/actions/Action;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFeedbackEffects:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

.field private final mGates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/gates/Gate;",
            ">;"
        }
    .end annotation
.end field

.field private final mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

.field private final mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

.field private mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

.field private mLastPrimedGesture:J

.field private mLastStage:I

.field private final mLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public static synthetic $r8$lambda$TnYRED1q5o7I2h4utluaj8XVH3w(Lcom/google/android/systemui/elmyra/ElmyraService;Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->lambda$new$1(Lcom/google/android/systemui/elmyra/gates/Gate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$veCmj6LA85ExYE7Z3ycmDxBUY50(Lcom/google/android/systemui/elmyra/ElmyraService;Lcom/google/android/systemui/elmyra/actions/Action;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/ElmyraService;->lambda$new$0(Lcom/google/android/systemui/elmyra/actions/Action;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/systemui/elmyra/ServiceConfiguration;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActionListener:Lcom/google/android/systemui/elmyra/actions/Action$Listener;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService$2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$2;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    new-instance v0, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/systemui/elmyra/ElmyraService$GestureListener;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;Lcom/google/android/systemui/elmyra/ElmyraService$1;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureListener:Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    new-instance p3, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {p3}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object p3, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string p3, "power"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mPowerManager:Landroid/os/PowerManager;

    const/4 p3, 0x1

    const-string v1, "Elmyra/ElmyraService"

    invoke-virtual {p1, p3, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/google/android/systemui/elmyra/ServiceConfiguration;->getActions()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    new-instance p3, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    invoke-interface {p1, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/google/android/systemui/elmyra/ServiceConfiguration;->getFeedbackEffects()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p2}, Lcom/google/android/systemui/elmyra/ServiceConfiguration;->getGates()Ljava/util/List;

    move-result-object p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    new-instance p3, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0}, Lcom/google/android/systemui/elmyra/ElmyraService$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/elmyra/ElmyraService;)V

    invoke-interface {p1, p3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    invoke-interface {p2}, Lcom/google/android/systemui/elmyra/ServiceConfiguration;->getGestureSensor()Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    if-eqz p1, :cond_0

    invoke-interface {p1, v0}, Lcom/google/android/systemui/elmyra/sensors/GestureSensor;->setGestureListener(Lcom/google/android/systemui/elmyra/sensors/GestureSensor$Listener;)V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateSensorListener()V

    return-void
.end method

.method static synthetic access$100(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/google/android/systemui/elmyra/actions/Action;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/google/android/systemui/elmyra/ElmyraService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/google/android/systemui/elmyra/ElmyraService;)I
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastStage:I

    return p0
.end method

.method static synthetic access$302(Lcom/google/android/systemui/elmyra/ElmyraService;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastStage:I

    return p1
.end method

.method static synthetic access$400(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/UiEventLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-object p0
.end method

.method static synthetic access$500(Lcom/google/android/systemui/elmyra/ElmyraService;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$600(Lcom/google/android/systemui/elmyra/ElmyraService;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    return-wide v0
.end method

.method static synthetic access$602(Lcom/google/android/systemui/elmyra/ElmyraService;J)J
    .locals 0

    iput-wide p1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastPrimedGesture:J

    return-wide p1
.end method

.method static synthetic access$700(Lcom/google/android/systemui/elmyra/ElmyraService;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static synthetic access$800(Lcom/google/android/systemui/elmyra/ElmyraService;)Landroid/os/PowerManager;
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private activateGates()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/gates/Gate;->activate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private blockingGate()Lcom/google/android/systemui/elmyra/gates/Gate;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/gates/Gate;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private deactivateGates()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/gates/Gate;->deactivate()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private firstAvailableAction()Lcom/google/android/systemui/elmyra/actions/Action;
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v1}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/elmyra/actions/Action;

    return-object p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/google/android/systemui/elmyra/actions/Action;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActionListener:Lcom/google/android/systemui/elmyra/actions/Action$Listener;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/elmyra/actions/Action;->setListener(Lcom/google/android/systemui/elmyra/actions/Action$Listener;)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/google/android/systemui/elmyra/gates/Gate;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGateListener:Lcom/google/android/systemui/elmyra/gates/Gate$Listener;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/elmyra/gates/Gate;->setListener(Lcom/google/android/systemui/elmyra/gates/Gate$Listener;)V

    return-void
.end method

.method private startListening()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/google/android/systemui/elmyra/sensors/Sensor;->isListening()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-interface {p0}, Lcom/google/android/systemui/elmyra/sensors/Sensor;->startListening()V

    :cond_0
    return-void
.end method

.method private stopListening()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/google/android/systemui/elmyra/sensors/Sensor;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-interface {v0}, Lcom/google/android/systemui/elmyra/sensors/Sensor;->stopListening()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-interface {v2}, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;->onRelease()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/google/android/systemui/elmyra/actions/Action;->onProgress(FI)V

    :cond_1
    return-void
.end method

.method private updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->firstAvailableAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Switching action from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Elmyra/ElmyraService"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/google/android/systemui/elmyra/actions/Action;->onProgress(FI)V

    :cond_0
    iput-object v0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/google/android/systemui/elmyra/ElmyraService;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  Gates:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-string v3, "X "

    const-string v4, "O "

    const-string v5, "    "

    if-ge v1, v2, :cond_2

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/gates/Gate;->isActive()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/gates/Gate;->isBlocking()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    move-object v3, v4

    :goto_1
    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    const-string v2, "- "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/gates/Gate;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/gates/Gate;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const-string v1, "  Actions:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v0

    :goto_3
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, v4

    goto :goto_4

    :cond_3
    move-object v2, v3

    :goto_4
    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mActions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v2}, Lcom/google/android/systemui/elmyra/actions/Action;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Active: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mLastActiveAction:Lcom/google/android/systemui/elmyra/actions/Action;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Feedback Effects:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_5
    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mFeedbackEffects:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/elmyra/feedback/FeedbackEffect;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  Gesture Sensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/ElmyraService;->mGestureSensor:Lcom/google/android/systemui/elmyra/sensors/GestureSensor;

    instance-of v0, p0, Lcom/android/systemui/Dumpable;

    if-eqz v0, :cond_6

    check-cast p0, Lcom/android/systemui/Dumpable;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/systemui/Dumpable;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method protected updateSensorListener()V
    .locals 4

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->updateActiveAction()Lcom/google/android/systemui/elmyra/actions/Action;

    move-result-object v0

    const-string v1, "Elmyra/ElmyraService"

    if-nez v0, :cond_0

    const-string v0, "No available actions"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->deactivateGates()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->stopListening()V

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->activateGates()V

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->blockingGate()Lcom/google/android/systemui/elmyra/gates/Gate;

    move-result-object v2

    if-eqz v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Gated by "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->stopListening()V

    return-void

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unblocked; current action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/ElmyraService;->startListening()V

    return-void
.end method
