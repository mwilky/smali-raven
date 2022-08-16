.class public final Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;
.super Ljava/lang/Object;
.source "KeyguardIndicationControllerGoogle_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;",
        ">;"
    }
.end annotation


# instance fields
.field public final bgExecutorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/broadcast/BroadcastDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field public final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field public final deviceConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/DeviceConfigProxy;",
            ">;"
        }
    .end annotation
.end field

.field public final devicePolicyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/admin/DevicePolicyManager;",
            ">;"
        }
    .end annotation
.end field

.field public final dockManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/dock/DockManager;",
            ">;"
        }
    .end annotation
.end field

.field public final executorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/concurrency/DelayableExecutor;",
            ">;"
        }
    .end annotation
.end field

.field public final falsingManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/FalsingManager;",
            ">;"
        }
    .end annotation
.end field

.field public final iActivityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/IActivityManager;",
            ">;"
        }
    .end annotation
.end field

.field public final iBatteryStatsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/app/IBatteryStats;",
            ">;"
        }
    .end annotation
.end field

.field public final keyguardBypassControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            ">;"
        }
    .end annotation
.end field

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            ">;"
        }
    .end annotation
.end field

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field public final lockPatternUtilsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/widget/LockPatternUtils;",
            ">;"
        }
    .end annotation
.end field

.field public final mainLooperProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/Looper;",
            ">;"
        }
    .end annotation
.end field

.field public final screenLifecycleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            ">;"
        }
    .end annotation
.end field

.field public final statusBarStateControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            ">;"
        }
    .end annotation
.end field

.field public final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field public final userManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/UserManager;",
            ">;"
        }
    .end annotation
.end field

.field public final wakeLockBuilderProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/util/wakelock/WakeLock$Builder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 3

    move-object v0, p0

    sget-object v1, Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/concurrency/GlobalConcurrencyModule_ProvideMainLooperFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v2, p1

    iput-object v2, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    move-object v1, p2

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->wakeLockBuilderProvider:Ljavax/inject/Provider;

    move-object v1, p3

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p4

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    move-object v1, p5

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    move-object v1, p6

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    move-object v1, p7

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    move-object v1, p8

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    move-object v1, p9

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->iBatteryStatsProvider:Ljavax/inject/Provider;

    move-object v1, p10

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->userManagerProvider:Ljavax/inject/Provider;

    move-object v1, p11

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    move-object v1, p12

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->deviceConfigProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p13

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->executorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->iActivityManagerProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p19

    iput-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    move-object/from16 v17, p16

    move-object/from16 v18, p17

    move-object/from16 v19, p18

    new-instance v20, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;

    move-object/from16 v0, v20

    invoke-direct/range {v0 .. v19}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v20
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->mainLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/os/Looper;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->wakeLockBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/util/wakelock/WakeLock$Builder;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->statusBarStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->dockManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/systemui/dock/DockManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->devicePolicyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Landroid/app/admin/DevicePolicyManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->iBatteryStatsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcom/android/internal/app/IBatteryStats;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->userManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/os/UserManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcom/android/systemui/tuner/TunerService;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->deviceConfigProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/systemui/util/DeviceConfigProxy;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->executorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->bgExecutorProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/util/concurrency/DelayableExecutor;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->falsingManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->lockPatternUtilsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->iActivityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/IActivityManager;

    iget-object v0, v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle_Factory;->keyguardBypassControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    new-instance v0, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;

    move-object v2, v0

    invoke-direct/range {v2 .. v21}, Lcom/google/android/systemui/statusbar/KeyguardIndicationControllerGoogle;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/util/wakelock/WakeLock$Builder;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/app/admin/DevicePolicyManager;Lcom/android/internal/app/IBatteryStats;Landroid/os/UserManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object v0
.end method