.class Lcom/android/server/accessibility/UiAutomationManager;
.super Ljava/lang/Object;
.source "UiAutomationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    }
.end annotation


# static fields
.field private static final COMPONENT_NAME:Landroid/content/ComponentName;

.field private static final LOG_TAG:Ljava/lang/String; = "UiAutomationManager"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

.field private mTrace:Lcom/android/server/accessibility/AccessibilityTrace;

.field private mUiAutomationFlags:I

.field private mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

.field private mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;

.field private mUiAutomationServiceOwner:Landroid/os/IBinder;

.field private final mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.server.accessibility"

    const-string v2, "UiAutomation"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/accessibility/UiAutomationManager$1;-><init>(Lcom/android/server/accessibility/UiAutomationManager;)V

    iput-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/accessibility/UiAutomationManager;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/server/accessibility/UiAutomationManager;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 0

    iput-object p1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/server/accessibility/UiAutomationManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    return-void
.end method

.method static synthetic access$200()Landroid/content/ComponentName;
    .locals 1

    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    return-object v0
.end method

.method private destroyUiAutomationService()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-interface {v1, v3, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->onRemoved()V

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->resetLocked()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v3, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    if-eqz v3, :cond_0

    iget-object v4, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    invoke-interface {v3, v4, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iput-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;

    :cond_0
    iput v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    invoke-interface {v1, v2}, Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;->onClientChangeLocked(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method canRetrieveInteractiveWindowsLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mRetrieveInteractiveWindows:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method dumpUiAutomationService(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getRelevantEventTypes()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->getRelevantEventTypes()I

    move-result v0

    return v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getRequestedEventMaskLocked()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mEventTypes:I

    return v0
.end method

.method getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->getServiceInfo()Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method isTouchExplorationEnabledLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_0

    iget-boolean v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mRequestTouchExplorationMode:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isUiAutomationRunningLocked()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method registerUiTestAutomationServiceLocked(Landroid/os/IBinder;Landroid/accessibilityservice/IAccessibilityServiceClient;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/accessibility/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;I)V
    .locals 17

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p4

    iget-object v12, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v12

    :try_start_0
    sget-object v0, Lcom/android/server/accessibility/UiAutomationManager;->COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v13, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->setComponentName(Landroid/content/ComponentName;)V

    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v0, :cond_1

    :try_start_1
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwnerDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v11, 0x0

    invoke-interface {v15, v0, v11}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    nop

    move/from16 v10, p13

    :try_start_2
    iput v10, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    move-object/from16 v9, p8

    iput-object v9, v14, Lcom/android/server/accessibility/UiAutomationManager;->mSystemSupport:Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;

    move-object/from16 v8, p9

    iput-object v8, v14, Lcom/android/server/accessibility/UiAutomationManager;->mTrace:Lcom/android/server/accessibility/AccessibilityTrace;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-exit v12

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v7, v14, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v16, v12

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    :try_start_3
    invoke-direct/range {v1 .. v13}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;-><init>(Lcom/android/server/accessibility/UiAutomationManager;Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;ILandroid/os/Handler;Ljava/lang/Object;Lcom/android/server/accessibility/AccessibilitySecurityPolicy;Lcom/android/server/accessibility/AbstractAccessibilityServiceConnection$SystemSupport;Lcom/android/server/accessibility/AccessibilityTrace;Lcom/android/server/wm/WindowManagerInternal;Lcom/android/server/accessibility/SystemActionPerformer;Lcom/android/server/accessibility/AccessibilityWindowManager;)V

    iput-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iput-object v15, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceOwner:Landroid/os/IBinder;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object/from16 v1, p4

    :try_start_4
    iput-object v1, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationServiceInfo:Landroid/accessibilityservice/AccessibilityServiceInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object/from16 v2, p2

    :try_start_5
    iput-object v2, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->onAdded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v0, v0, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v0}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v3, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v4, 0x0

    invoke-interface {v0, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    nop

    :try_start_7
    iget-object v0, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    invoke-virtual {v0}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->connectServiceUnknownThread()V

    monitor-exit v16

    return-void

    :catch_0
    move-exception v0

    const-string v3, "UiAutomationManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed registering death link: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    monitor-exit v16

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v2, p2

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v1, p4

    goto :goto_0

    :catch_1
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v16, v12

    move-object v1, v13

    const-string v3, "UiAutomationManager"

    const-string v4, "Couldn\'t register for the death of a UiTestAutomationService!"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    monitor-exit v16

    return-void

    :cond_1
    move-object/from16 v2, p2

    move-object/from16 v16, v12

    move-object v1, v13

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UiAutomationService "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v14, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v4, v4, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "already registered!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    move-object/from16 v2, p2

    move-object/from16 v16, v12

    move-object v1, v13

    :goto_0
    monitor-exit v16
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0

    :catchall_3
    move-exception v0

    goto :goto_0
.end method

.method sendAccessibilityEventLocked(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->notifyAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method suppressingAccessibilityServicesLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/2addr v0, v1

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method unregisterUiTestAutomationServiceLocked(Landroid/accessibilityservice/IAccessibilityServiceClient;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/accessibility/UiAutomationManager;->useAccessibility()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    iget-object v1, v1, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    if-eqz v1, :cond_0

    invoke-interface {p1}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationService:Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;

    iget-object v2, v2, Lcom/android/server/accessibility/UiAutomationManager$UiAutomationService;->mServiceInterface:Landroid/accessibilityservice/IAccessibilityServiceClient;

    invoke-interface {v2}, Landroid/accessibilityservice/IAccessibilityServiceClient;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UiAutomationService "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " not registered!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/accessibility/UiAutomationManager;->destroyUiAutomationService()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method useAccessibility()Z
    .locals 1

    iget v0, p0, Lcom/android/server/accessibility/UiAutomationManager;->mUiAutomationFlags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
