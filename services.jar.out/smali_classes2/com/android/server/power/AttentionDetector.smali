.class public Lcom/android/server/power/AttentionDetector;
.super Ljava/lang/Object;
.source "AttentionDetector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/power/AttentionDetector$UserSwitchObserver;,
        Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DEFAULT_POST_DIM_CHECK_DURATION_MILLIS:J = 0x0L

.field static final DEFAULT_PRE_DIM_CHECK_DURATION_MILLIS:J = 0x7d0L

.field static final KEY_MAX_EXTENSION_MILLIS:Ljava/lang/String; = "max_extension_millis"

.field static final KEY_POST_DIM_CHECK_DURATION_MILLIS:Ljava/lang/String; = "post_dim_check_duration_millis"

.field static final KEY_PRE_DIM_CHECK_DURATION_MILLIS:Ljava/lang/String; = "pre_dim_check_duration_millis"

.field private static final TAG:Ljava/lang/String; = "AttentionDetector"


# instance fields
.field protected mAttentionManager:Landroid/attention/AttentionManagerInternal;

.field mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

.field private mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

.field protected mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field protected mDefaultMaximumExtensionMillis:J

.field private mEffectivePostDimTimeoutMillis:J

.field private mIsSettingEnabled:Z

.field private mLastActedOnNextScreenDimming:J

.field private mLastUserActivityTime:J

.field private final mLock:Ljava/lang/Object;

.field private mMaximumExtensionMillis:J

.field private final mOnUserAttention:Ljava/lang/Runnable;

.field protected mPreDimCheckDurationMillis:J

.field protected mRequestId:I

.field private final mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mRequestedPostDimTimeoutMillis:J

.field private mWakefulness:I

.field protected mWindowManager:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Ljava/lang/Object;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput v1, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/power/AttentionDetector;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/power/AttentionDetector;)I
    .locals 1

    iget v0, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/power/AttentionDetector;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mOnUserAttention:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/power/AttentionDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/power/AttentionDetector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private cancelCurrentRequestIfAny()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v0, v1}, Landroid/attention/AttentionManagerInternal;->cancelAttentionCheck(Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)V

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_0
    return-void
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .locals 4
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

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "pre_dim_check_duration_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_1
    const-string v3, "max_extension_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_2
    const-string v3, "post_dim_check_duration_millis"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring change on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "AttentionDetector"

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->readValuesFromDeviceConfig()V

    return-void

    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x784b213c -> :sswitch_2
        -0x1e7d483f -> :sswitch_1
        0x18e8ab07 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readValuesFromDeviceConfig()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getMaxExtensionMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPreDimCheckDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->getPostDimCheckDurationMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "readValuesFromDeviceConfig():\nmMaximumExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmPreDimCheckDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\nmRequestedPostDimTimeoutMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AttentionDetector"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private resetConsecutiveExtensionCount()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_0

    const/16 v0, 0xa8

    invoke-static {v0, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IJ)V

    :cond_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "AttentionDetector:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mIsSettingEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mMaxExtensionMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPreDimCheckDurationMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mEffectivePostDimTimeout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastUserActivityTime(excludingAttention)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAttentionServiceSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method protected getMaxExtensionMillis()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    const-string v2, "attention_manager_service"

    const-string v3, "max_extension_millis"

    invoke-static {v2, v3, v0, v1}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    const-string v2, "AttentionDetector"

    const-string v3, "Bad flag value supplied for: max_extension_millis"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    return-wide v2
.end method

.method protected getPostDimCheckDurationMillis()J
    .locals 6

    const-string v0, "attention_manager_service"

    const-string v1, "post_dim_check_duration_millis"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x2710

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    const-string v4, "AttentionDetector"

    const-string v5, "Bad flag value supplied for: post_dim_check_duration_millis"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method protected getPreDimCheckDurationMillis()J
    .locals 6

    const-string v0, "attention_manager_service"

    const-string v1, "pre_dim_check_duration_millis"

    const-wide/16 v2, 0x7d0

    invoke-static {v0, v1, v2, v3}, Landroid/provider/DeviceConfig;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    const-wide/16 v4, 0x0

    cmp-long v4, v0, v4

    if-ltz v4, :cond_1

    const-wide/16 v4, 0x32c8

    cmp-long v4, v0, v4

    if-lez v4, :cond_0

    goto :goto_0

    :cond_0
    return-wide v0

    :cond_1
    :goto_0
    const-string v4, "AttentionDetector"

    const-string v5, "Bad flag value supplied for: pre_dim_check_duration_millis"

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v2
.end method

.method isAttentionServiceSupported()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/attention/AttentionManagerInternal;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$systemReady$0$AttentionDetector(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/power/AttentionDetector;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public onUserActivity(JI)I
    .locals 1

    packed-switch p3, :pswitch_data_0

    const/4 v0, -0x1

    return v0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mConsecutiveTimeoutExtendedCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    const/4 v0, 0x0

    return v0

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onWakefulnessChangeStarted(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/power/AttentionDetector;->mWakefulness:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->cancelCurrentRequestIfAny()V

    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->resetConsecutiveExtensionCount()V

    :cond_0
    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/power/AttentionDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/server/power/AttentionDetector;->updateEnabledFromSettings(Landroid/content/Context;)V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mContentResolver:Landroid/content/ContentResolver;

    const-class v0, Landroid/attention/AttentionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/attention/AttentionManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mDefaultMaximumExtensionMillis:J

    :try_start_0
    new-instance v0, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/power/AttentionDetector$UserSwitchObserver;-><init>(Lcom/android/server/power/AttentionDetector;Lcom/android/server/power/AttentionDetector$1;)V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    const-string v2, "AttentionDetector"

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/server/power/AttentionDetector$1;

    new-instance v4, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v3, p0, v4, p1}, Lcom/android/server/power/AttentionDetector$1;-><init>(Lcom/android/server/power/AttentionDetector;Landroid/os/Handler;Landroid/content/Context;)V

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/power/AttentionDetector;->readValuesFromDeviceConfig()V

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/power/AttentionDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/AttentionDetector;)V

    const-string v2, "attention_manager_service"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method updateEnabledFromSettings(Landroid/content/Context;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "adaptive_sleep"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    return-void
.end method

.method public updateUserActivity(JJ)J
    .locals 11

    iget-wide v0, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    cmp-long v0, p1, v0

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/power/AttentionDetector;->mIsSettingEnabled:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/android/server/power/AttentionDetector;->isAttentionServiceSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/power/AttentionDetector;->mWindowManager:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerInternal;->isKeyguardShowingAndNotOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    sub-long v2, p1, v2

    iget-wide v4, p0, Lcom/android/server/power/AttentionDetector;->mLastUserActivityTime:J

    iget-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mMaximumExtensionMillis:J

    add-long/2addr v4, v6

    cmp-long v6, v0, v2

    if-gez v6, :cond_1

    return-wide v2

    :cond_1
    cmp-long v6, v4, v2

    if-gez v6, :cond_2

    return-wide p1

    :cond_2
    iget-object v6, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    if-eqz v6, :cond_3

    return-wide v2

    :cond_3
    iget-object v6, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget v6, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    iput-wide p1, p0, Lcom/android/server/power/AttentionDetector;->mLastActedOnNextScreenDimming:J

    new-instance v6, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget v7, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-direct {v6, p0, v7}, Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;-><init>(Lcom/android/server/power/AttentionDetector;I)V

    iput-object v6, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    iget-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mRequestedPostDimTimeoutMillis:J

    invoke-static {v6, v7, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Checking user attention, ID: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/power/AttentionDetector;->mRequestId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "AttentionDetector"

    invoke-static {v7, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/android/server/power/AttentionDetector;->mAttentionManager:Landroid/attention/AttentionManagerInternal;

    iget-wide v7, p0, Lcom/android/server/power/AttentionDetector;->mPreDimCheckDurationMillis:J

    iget-wide v9, p0, Lcom/android/server/power/AttentionDetector;->mEffectivePostDimTimeoutMillis:J

    add-long/2addr v7, v9

    iget-object v9, p0, Lcom/android/server/power/AttentionDetector;->mCallback:Lcom/android/server/power/AttentionDetector$AttentionCallbackInternalImpl;

    invoke-virtual {v6, v7, v8, v9}, Landroid/attention/AttentionManagerInternal;->checkAttention(JLandroid/attention/AttentionManagerInternal$AttentionCallbackInternal;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v7, p0, Lcom/android/server/power/AttentionDetector;->mRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_4
    return-wide v2

    :cond_5
    :goto_0
    return-wide p1
.end method
