.class public final Lcom/android/server/job/controllers/idle/CarIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "CarIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field public static final ACTION_FORCE_IDLE:Ljava/lang/String; = "com.android.server.jobscheduler.FORCE_IDLE"

.field public static final ACTION_GARAGE_MODE_OFF:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_OFF"

.field public static final ACTION_GARAGE_MODE_ON:Ljava/lang/String; = "com.android.server.jobscheduler.GARAGE_MODE_ON"

.field public static final ACTION_UNFORCE_IDLE:Ljava/lang/String; = "com.android.server.jobscheduler.UNFORCE_IDLE"

.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.CarIdlenessTracker"


# instance fields
.field private mForced:Z

.field private mGarageModeOn:Z

.field private mIdle:Z

.field private mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

.field private mScreenOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "JobScheduler.CarIdlenessTracker"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    return-void
.end method

.method private handleScreenOn()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_1

    const-string v0, "Device is exiting idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_1

    :cond_1
    const-string v0, "Device is already non-idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    const-string v0, "Screen is on, but device cannot exit idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private static logIfDebug(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "JobScheduler.CarIdlenessTracker"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private setForceIdleState(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    return-void
.end method

.method private triggerIdleness()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eqz v0, :cond_0

    const-string v0, "Device is already idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    if-nez v0, :cond_1

    const-string v0, "Device is going idle"

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TRIGGER_IDLE received but not changing state: mIdle = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateIdlenessState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    if-eq v1, v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device idleness changed. New idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device idleness is the same. Current idle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000002L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    const-wide v5, 0x10800000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mGarageModeOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mForced: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mForced:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public isIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received action: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    const-string v1, "com.android.server.jobscheduler.FORCE_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const-string v1, "Forcing idle..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->setForceIdleState(Z)V

    goto/16 :goto_0

    :cond_0
    const-string v1, "com.android.server.jobscheduler.UNFORCE_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    const-string v1, "Unforcing idle..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    invoke-direct {p0, v3}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->setForceIdleState(Z)V

    goto/16 :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "Screen is on..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->handleScreenOn()V

    goto :goto_0

    :cond_2
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "Screen is off..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mScreenOn:Z

    goto :goto_0

    :cond_3
    const-string v1, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "GarageMode is on..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    iput-boolean v2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    goto :goto_0

    :cond_4
    const-string v1, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "GarageMode is off..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->updateIdlenessState()V

    goto :goto_0

    :cond_5
    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    if-nez v1, :cond_6

    const-string v1, "Idle trigger fired..."

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->triggerIdleness()V

    goto :goto_0

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; mIdle="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdle:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mGarageModeOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mGarageModeOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->logIfDebug(Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .locals 2

    iput-object p2, p0, Lcom/android/server/job/controllers/idle/CarIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.jobscheduler.GARAGE_MODE_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.jobscheduler.GARAGE_MODE_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.jobscheduler.FORCE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.jobscheduler.UNFORCE_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
