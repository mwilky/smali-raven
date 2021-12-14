.class public Lcom/android/server/power/ScreenUndimDetector;
.super Ljava/lang/Object;
.source "ScreenUndimDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/ScreenUndimDetector$InternalClock;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEFAULT_KEEP_SCREEN_ON_ENABLED:Z = true

.field static final DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

.field static final DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

.field static final DEFAULT_UNDIMS_REQUIRED:I = 0x2

.field static final KEY_KEEP_SCREEN_ON_ENABLED:Ljava/lang/String; = "keep_screen_on_enabled"

.field static final KEY_KEEP_SCREEN_ON_FOR_MILLIS:Ljava/lang/String; = "keep_screen_on_for_millis"

.field static final KEY_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:Ljava/lang/String; = "max_duration_between_undims_millis"

.field static final KEY_UNDIMS_REQUIRED:Ljava/lang/String; = "undims_required"

.field private static final OUTCOME_POWER_BUTTON:I = 0x1

.field private static final OUTCOME_TIMEOUT:I = 0x2

.field private static final TAG:Ljava/lang/String; = "ScreenUndimDetector"

.field private static final UNDIM_DETECTOR_WAKE_LOCK:Ljava/lang/String; = "UndimDetectorWakeLock"


# instance fields
.field private mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

.field mCurrentScreenPolicy:I

.field private mInteractionAfterUndimTime:J

.field private mKeepScreenOnEnabled:Z

.field private mKeepScreenOnForMillis:J

.field private mMaxDurationBetweenUndimsMillis:J

.field mUndimCounter:I

.field mUndimCounterStartedMillis:J

.field private mUndimOccurredTime:J

.field private mUndimsRequired:I

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xa

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    new-instance v0, Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-direct {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    return-void
.end method

.method constructor <init>(Lcom/android/server/power/ScreenUndimDetector$InternalClock;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    iput-object p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    return-void
.end method

.method private checkAndLogUndim(I)V
    .locals 10

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    const/16 v4, 0x16d

    iget-wide v5, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    sub-long v6, v0, v5

    iget-wide v8, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    cmp-long v5, v8, v2

    if-eqz v5, :cond_0

    sub-long v8, v0, v8

    goto :goto_0

    :cond_0
    move-wide v8, v2

    :goto_0
    move v5, p1

    invoke-static/range {v4 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJJ)V

    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    iput-wide v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    :cond_1
    return-void
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDeviceConfigChange; key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ScreenUndimDetector"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v4, "max_duration_between_undims_millis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v4, "keep_screen_on_for_millis"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :sswitch_2
    const-string v4, "keep_screen_on_enabled"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_3
    const-string v4, "undims_required"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v2, 0x2

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    return-void

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7e0c2586 -> :sswitch_3
        -0x6f8997a6 -> :sswitch_2
        0x14fb26c3 -> :sswitch_1
        0x65e239ba -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readKeepScreenOnForMillis()J
    .locals 4

    sget-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_KEEP_SCREEN_ON_FOR_MILLIS:J

    const-string v2, "attention_manager_service"

    const-string v3, "keep_screen_on_for_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private readKeepScreenOnNotificationEnabled()Z
    .locals 3

    const-string v0, "attention_manager_service"

    const-string v1, "keep_screen_on_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private readMaxDurationBetweenUndimsMillis()J
    .locals 4

    sget-wide v0, Lcom/android/server/power/ScreenUndimDetector;->DEFAULT_MAX_DURATION_BETWEEN_UNDIMS_MILLIS:J

    const-string v2, "attention_manager_service"

    const-string v3, "max_duration_between_undims_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private readUndimsRequired()I
    .locals 4

    const-string v0, "attention_manager_service"

    const-string v1, "undims_required"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    const/4 v1, 0x5

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Provided undimsRequired="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " is not allowed [1, 5]; using the default="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ScreenUndimDetector"

    invoke-static {v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public synthetic lambda$systemReady$0$ScreenUndimDetector(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/ScreenUndimDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method readValuesFromDeviceConfig()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnNotificationEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readKeepScreenOnForMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readUndimsRequired()I

    move-result v0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    invoke-direct {p0}, Lcom/android/server/power/ScreenUndimDetector;->readMaxDurationBetweenUndimsMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readValuesFromDeviceConfig():\nmKeepScreenOnForMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmKeepScreenOnNotificationEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\nmUndimsRequired="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenUndimDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public recordScreenPolicy(I)V
    .locals 9

    iget v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    iput p1, p0, Lcom/android/server/power/ScreenUndimDetector;->mCurrentScreenPolicy:I

    iget-boolean v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnEnabled:Z

    if-nez v1, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    if-eqz p1, :cond_2

    if-ne p1, v2, :cond_3

    :cond_2
    invoke-direct {p0, v2}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    :cond_3
    if-eq p1, v1, :cond_a

    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    goto :goto_0

    :pswitch_1
    const/4 v3, 0x3

    if-ne p1, v3, :cond_7

    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    sub-long v5, v3, v5

    iget-wide v7, p0, Lcom/android/server/power/ScreenUndimDetector;->mMaxDurationBetweenUndimsMillis:J

    cmp-long v1, v5, v7

    if-ltz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    :cond_4
    iget v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    if-nez v1, :cond_5

    iput-wide v3, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    :cond_5
    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    iget v2, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimsRequired:I

    if-lt v1, v2, :cond_6

    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v1}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    iget-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-wide v7, p0, Lcom/android/server/power/ScreenUndimDetector;->mKeepScreenOnForMillis:J

    invoke-virtual {v1, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_6
    goto :goto_0

    :cond_7
    if-eqz p1, :cond_8

    if-ne p1, v2, :cond_9

    :cond_8
    invoke-direct {p0, v1}, Lcom/android/server/power/ScreenUndimDetector;->checkAndLogUndim(I)V

    :cond_9
    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->reset()V

    nop

    :cond_a
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method reset()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounter:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimCounterStartedMillis:J

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/ScreenUndimDetector;->readValuesFromDeviceConfig()V

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/ScreenUndimDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/ScreenUndimDetector;)V

    const-string v2, "attention_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "UndimDetectorWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ScreenUndimDetector;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-void
.end method

.method public userActivity()V
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mUndimOccurredTime:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mClock:Lcom/android/server/power/ScreenUndimDetector$InternalClock;

    invoke-virtual {v0}, Lcom/android/server/power/ScreenUndimDetector$InternalClock;->getCurrentTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/ScreenUndimDetector;->mInteractionAfterUndimTime:J

    :cond_0
    return-void
.end method
