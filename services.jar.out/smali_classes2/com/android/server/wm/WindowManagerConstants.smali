.class final Lcom/android/server/wm/WindowManagerConstants;
.super Ljava/lang/Object;
.source "WindowManagerConstants.java"


# static fields
.field static final KEY_SYSTEM_GESTURE_EXCLUSION_LOG_DEBOUNCE_MILLIS:Ljava/lang/String; = "system_gesture_exclusion_log_debounce_millis"

.field private static final MIN_GESTURE_EXCLUSION_LIMIT_DP:I = 0xc8


# instance fields
.field private final mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

.field private final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private final mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field private final mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

.field mSystemGestureExcludedByPreQStickyImmersive:Z

.field mSystemGestureExclusionLimitDp:I

.field mSystemGestureExclusionLogDebounceTimeoutMillis:J

.field private final mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$R6jJTtpKTNTeb3Af8P_LcxxZpgI(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rr6DBPptBMcotjU-zTbQM6pjCkw(Lcom/android/server/wm/WindowManagerConstants;Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowManagerConstants;->onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Lcom/android/server/utils/DeviceConfigInterface;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p2

    check-cast v0, Ljava/lang/Runnable;

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    new-instance v0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    new-instance v0, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowManagerConstants;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/utils/DeviceConfigInterface;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    new-instance v1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1}, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    invoke-direct {p0, v0, v1, p2}, Lcom/android/server/wm/WindowManagerConstants;-><init>(Lcom/android/server/wm/WindowManagerGlobalLock;Ljava/lang/Runnable;Lcom/android/server/utils/DeviceConfigInterface;)V

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    sget-object v1, Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;->INSTANCE:Lcom/android/server/wm/WindowManagerConstants$$ExternalSyntheticLambda3;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private onAndroidPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    if-nez v3, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    const/4 v4, -0x1

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :cond_1
    goto :goto_1

    :sswitch_0
    const-string v5, "system_gesture_exclusion_limit_dp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    goto :goto_1

    :sswitch_1
    const-string v5, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    packed-switch v4, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    const/4 v1, 0x1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    const/4 v1, 0x1

    nop

    :goto_2
    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mUpdateSystemGestureExclusionCallback:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bcc3a39 -> :sswitch_1
        0x12e32da7 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onWindowPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v2, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    const/4 v3, -0x1

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :cond_1
    goto :goto_1

    :pswitch_0
    const-string v4, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x0

    :goto_1
    packed-switch v3, :pswitch_data_1

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    nop

    :goto_2
    goto :goto_0

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x7801476
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method private updateSystemGestureExcludedByPreQStickyImmersive()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    const-string v1, "android"

    const-string v2, "system_gestures_excluded_by_pre_q_sticky_immersive"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/utils/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    return-void
.end method

.method private updateSystemGestureExclusionLimitDp()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    const-string v1, "android"

    const-string v2, "system_gesture_exclusion_limit_dp"

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/utils/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    const/16 v1, 0xc8

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    return-void
.end method

.method private updateSystemGestureExclusionLogDebounceMillis()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    const-string v1, "window_manager"

    const-string v2, "system_gesture_exclusion_log_debounce_millis"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/server/utils/DeviceConfigInterface;->getLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    return-void
.end method


# virtual methods
.method dispose()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/utils/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/utils/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "WINDOW MANAGER CONSTANTS (dumpsys window constants):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "system_gesture_exclusion_log_debounce_millis"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLogDebounceTimeoutMillis:J

    invoke-virtual {p1, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "system_gesture_exclusion_limit_dp"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExclusionLimitDp:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(I)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "system_gestures_excluded_by_pre_q_sticky_immersive"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mSystemGestureExcludedByPreQStickyImmersive:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method start(Ljava/util/concurrent/Executor;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerAndroid:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "android"

    invoke-interface {v0, v2, p1, v1}, Lcom/android/server/utils/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    iget-object v0, p0, Lcom/android/server/wm/WindowManagerConstants;->mDeviceConfig:Lcom/android/server/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerConstants;->mListenerWindowManager:Landroid/provider/DeviceConfig$OnPropertiesChangedListener;

    const-string v2, "window_manager"

    invoke-interface {v0, v2, p1, v1}, Lcom/android/server/utils/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLogDebounceMillis()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExclusionLimitDp()V

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerConstants;->updateSystemGestureExcludedByPreQStickyImmersive()V

    return-void
.end method
