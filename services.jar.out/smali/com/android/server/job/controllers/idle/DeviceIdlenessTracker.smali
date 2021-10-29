.class public final Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;
.super Landroid/content/BroadcastReceiver;
.source "DeviceIdlenessTracker.java"

# interfaces
.implements Lcom/android/server/job/controllers/idle/IdlenessTracker;


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "JobScheduler.DeviceIdlenessTracker"


# instance fields
.field private mAlarm:Landroid/app/AlarmManager;

.field private mDockIdle:Z

.field private mIdle:Z

.field private mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field private mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

.field private mIdleWindowSlop:J

.field private mInactivityIdleThreshold:J

.field private final mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProjectionActive:Z

.field private mScreenOn:Z


# direct methods
.method public static synthetic $r8$lambda$2MC_yOXl7-XH1zQvbaDgQgMvvEw(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;ILjava/util/Set;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->onProjectionStateChanged(ILjava/util/Set;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

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
    sput-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    new-instance v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    return-void
.end method

.method private cancelIdlenessCheck()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method private handleIdleTrigger()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-string v1, "JobScheduler.DeviceIdlenessTracker"

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Idle trigger fired @ "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TRIGGER_IDLE received but not changing state; idle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " screen="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " projection="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return-void
.end method

.method private maybeScheduleIdlenessCheck(Ljava/lang/String;)V
    .locals 13

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v0, :cond_2

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    add-long/2addr v2, v0

    sget-boolean v4, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Scheduling idle : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " now:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " when="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "JobScheduler.DeviceIdlenessTracker"

    invoke-static {v5, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const/4 v5, 0x2

    iget-wide v8, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    iget-object v11, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v12, 0x0

    const-string v10, "JS idleness"

    move-wide v6, v2

    invoke-virtual/range {v4 .. v12}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_2
    return-void
.end method

.method private onProjectionStateChanged(ILjava/util/Set;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-ne v2, v1, :cond_1

    return-void

    :cond_1
    sget-boolean v2, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Projection state changed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JobScheduler.DeviceIdlenessTracker"

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->cancelIdlenessCheck()V

    iget-boolean v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz v2, :cond_4

    iput-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    iget-object v2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v2, v0}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    goto :goto_1

    :cond_3
    const-string v0, "Projection ended"

    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    :cond_4
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 7

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    const-wide v2, 0x10b00000001L

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    const-wide v5, 0x10800000001L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    const-wide v5, 0x10800000002L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    const-wide v5, 0x10800000003L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    iget-boolean v4, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    const-wide v5, 0x10800000005L

    invoke-virtual {p1, v5, v6, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "  mIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mScreenOn: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mDockIdle: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    const-string v0, "  mProjectionActive: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mProjectionActive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public isIdle()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    return v0
.end method

.method public synthetic lambda$new$0$DeviceIdlenessTracker()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->DEBUG:Z

    const-string v2, "JobScheduler.DeviceIdlenessTracker"

    if-eqz v1, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const-string v5, "android.intent.action.DOCK_IDLE"

    const/4 v6, 0x1

    const/4 v7, 0x0

    sparse-switch v4, :sswitch_data_0

    :cond_1
    goto :goto_0

    :sswitch_0
    const-string v4, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v7

    goto :goto_0

    :sswitch_1
    const-string v4, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v4, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v3, v6

    goto :goto_0

    :sswitch_3
    const-string v4, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x5

    goto :goto_0

    :sswitch_5
    const-string v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x3

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->handleIdleTrigger()V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v1, :cond_2

    return-void

    :cond_2
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    goto :goto_1

    :cond_3
    iput-boolean v7, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    iput-boolean v7, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    :goto_1
    invoke-direct {p0, v0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->maybeScheduleIdlenessCheck(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    iget-boolean v3, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    if-nez v3, :cond_4

    return-void

    :cond_4
    :pswitch_3
    iget-object v3, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v3

    if-nez v3, :cond_5

    return-void

    :cond_5
    :pswitch_4
    iput-boolean v6, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mScreenOn:Z

    iput-boolean v7, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mDockIdle:Z

    if-eqz v1, :cond_6

    const-string v1, "exiting idle"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-direct {p0}, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->cancelIdlenessCheck()V

    iget-boolean v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    if-eqz v1, :cond_7

    iput-boolean v7, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdle:Z

    iget-object v1, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-interface {v1, v7}, Lcom/android/server/job/controllers/idle/IdlenessListener;->reportNewIdleState(Z)V

    :cond_7
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_6
        -0x56ac2893 -> :sswitch_5
        -0x35f53cc5 -> :sswitch_4
        0xe98bfe6 -> :sswitch_3
        0xf5d1132 -> :sswitch_2
        0x56d17cc5 -> :sswitch_1
        0x64b5c0ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
    .locals 5

    iput-object p2, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleListener:Lcom/android/server/job/controllers/idle/IdlenessListener;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mInactivityIdleThreshold:J

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mIdleWindowSlop:J

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mAlarm:Landroid/app/AlarmManager;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mPowerManager:Landroid/os/PowerManager;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DREAMING_STOPPED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.server.ACTION_TRIGGER_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_IDLE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.DOCK_ACTIVE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/UiModeManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/job/controllers/idle/DeviceIdlenessTracker;->mOnProjectionStateChangedListener:Landroid/app/UiModeManager$OnProjectionStateChangedListener;

    const/4 v4, -0x1

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/UiModeManager;->addOnProjectionStateChangedListener(ILjava/util/concurrent/Executor;Landroid/app/UiModeManager$OnProjectionStateChangedListener;)V

    return-void
.end method
