.class Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field public static final APP_STANDBY_POLICY_INDEX:I = 0x1

.field public static final BATTERY_SAVER_POLICY_INDEX:I = 0x3

.field public static final DEVICE_IDLE_POLICY_INDEX:I = 0x2

.field static final EXACT_ALLOW_REASON_ALLOW_LIST:I = 0x1

.field static final EXACT_ALLOW_REASON_COMPAT:I = 0x2

.field static final EXACT_ALLOW_REASON_NOT_APPLICABLE:I = -0x1

.field static final EXACT_ALLOW_REASON_PERMISSION:I = 0x0

.field public static final NUM_POLICIES:I = 0x4

.field public static final REQUESTER_POLICY_INDEX:I


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public mExactAllowReason:I

.field public mIdleOptions:Landroid/os/Bundle;

.field private mMaxWhenElapsed:J

.field private mPolicyWhenElapsed:[J

.field private mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:Lcom/android/server/alarm/AlarmManagerService$PriorityClass;

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method constructor <init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v2, p4

    move-wide/from16 v4, p6

    move-object/from16 v6, p10

    move-object/from16 v7, p12

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v1, v0, Lcom/android/server/alarm/Alarm;->type:I

    move-wide/from16 v8, p2

    iput-wide v8, v0, Lcom/android/server/alarm/Alarm;->origWhen:J

    const/4 v10, 0x0

    const/4 v11, 0x2

    if-eq v1, v11, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v11, v10

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v11, 0x1

    :goto_1
    iput-boolean v11, v0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v11, 0x4

    new-array v11, v11, [J

    iput-object v11, v0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide v2, v11, v10

    iput-wide v2, v0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iput-wide v4, v0, Lcom/android/server/alarm/Alarm;->windowLength:J

    add-long v10, v2, v4

    invoke-static {v10, v11}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v10

    iput-wide v10, v0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    move-wide/from16 v10, p8

    iput-wide v10, v0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    iput-object v6, v0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    move-object/from16 v12, p11

    iput-object v12, v0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    iput-object v7, v0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    invoke-static {v6, v7, v1}, Lcom/android/server/alarm/Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object/from16 v13, p13

    iput-object v13, v0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 v14, p14

    iput v14, v0, Lcom/android/server/alarm/Alarm;->flags:I

    move-object/from16 v15, p15

    iput-object v15, v0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move/from16 v1, p16

    iput v1, v0, Lcom/android/server/alarm/Alarm;->uid:I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    move/from16 v1, p19

    iput v1, v0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    if-eqz v6, :cond_2

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v1, v16

    goto :goto_2

    :cond_2
    move-object/from16 v1, p17

    :goto_2
    iput-object v1, v0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-eqz v6, :cond_3

    invoke-virtual/range {p10 .. p10}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result v1

    goto :goto_3

    :cond_3
    move/from16 v1, p16

    :goto_3
    iput v1, v0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    return-void
.end method

.method private static exactReasonToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "--unknown--"

    return-object v0

    :pswitch_0
    const-string v0, "compat"

    return-object v0

    :pswitch_1
    const-string v0, "allow-listed"

    return-object v0

    :pswitch_2
    const-string/jumbo v0, "permission"

    return-object v0

    :pswitch_3
    const-string v0, "N/A"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "*alarm*:"

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "*walarm*:"

    :goto_1
    if-eqz p0, :cond_2

    invoke-virtual {p0, v0}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    return-object v1
.end method

.method private static policyIndexToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "--unknown--"

    return-object v0

    :pswitch_0
    const-string v0, "battery_saver"

    return-object v0

    :pswitch_1
    const-string v0, "device_idle"

    return-object v0

    :pswitch_2
    const-string v0, "app_standby"

    return-object v0

    :pswitch_3
    const-string/jumbo v0, "requester"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    packed-switch p0, :pswitch_data_0

    const-string v0, "--unknown--"

    return-object v0

    :pswitch_0
    const-string v0, "ELAPSED"

    return-object v0

    :pswitch_1
    const-string v0, "ELAPSED_WAKEUP"

    return-object v0

    :pswitch_2
    const-string v0, "RTC"

    return-object v0

    :pswitch_3
    const-string v0, "RTC_WAKEUP"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateWhenElapsed()Z
    .locals 12

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v5, v5, v2

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    iget-object v4, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v5, 0x0

    aget-wide v6, v4, v5

    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    add-long/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/server/alarm/AlarmManagerService;->clampPositive(J)J

    move-result-wide v6

    iget-wide v8, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    iget-wide v10, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long v4, v0, v10

    if-nez v4, :cond_1

    cmp-long v4, v2, v8

    if-eqz v4, :cond_2

    :cond_1
    const/4 v5, 0x1

    :cond_2
    return v5
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 4

    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    move v0, v1

    const-string/jumbo v1, "tag="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "type="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const-string v1, " origWhen="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v0, :cond_2

    new-instance v1, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    :goto_1
    const-string v1, " window="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v1, v2, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const-string v1, " exactAllowReason="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->mExactAllowReason:I

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->exactReasonToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :cond_3
    const-string v1, " repeatInterval="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v1, v2}, Landroid/util/IndentingPrintWriter;->print(J)V

    const-string v1, " count="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(I)V

    const-string v1, " flags=0x"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v1, "policyWhenElapsed:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x4

    if-ge v1, v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v2, v1

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    const-string/jumbo v1, "whenElapsed="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    const-string v1, " maxWhenElapsed="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v1, v2, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v1, :cond_5

    const-string v1, "Alarm clock:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  triggerTime="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v2}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  showIntent="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {v1}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "operation="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v1, :cond_7

    const-string/jumbo v1, "listener="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v1}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    :cond_7
    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz v1, :cond_8

    const-string v1, "idle-options="

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_8
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    const-wide v3, 0x10900000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v2

    sub-long/2addr v2, p4

    const-wide v4, 0x10300000003L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide v4, 0x10300000004L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide v4, 0x10300000005L

    invoke-virtual {p1, v4, v5, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    iget v2, p0, Lcom/android/server/alarm/Alarm;->count:I

    const-wide v3, 0x10500000006L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget v2, p0, Lcom/android/server/alarm/Alarm;->flags:I

    const-wide v3, 0x10500000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v2, :cond_0

    const-wide v3, 0x10b00000008L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_0
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    const-wide v3, 0x10b00000009L

    invoke-virtual {v2, p1, v3, v4}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    :cond_1
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v2, :cond_2

    const-wide v3, 0x1090000000aL

    invoke-interface {v2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    :cond_2
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getMaxWhenElapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    return-wide v0
.end method

.method getPolicyElapsed(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public getRequestedElapsed()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v1, 0x0

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public getWhenElapsed()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    return-wide v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setPolicyElapsed(IJ)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    invoke-direct {p0}, Lcom/android/server/alarm/Alarm;->updateWhenElapsed()Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " origWhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " whenElapsed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
