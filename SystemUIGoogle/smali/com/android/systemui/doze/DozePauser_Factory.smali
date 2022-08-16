.class public final Lcom/android/systemui/doze/DozePauser_Factory;
.super Ljava/lang/Object;
.source "DozePauser_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final alarmManagerProvider:Ljavax/inject/Provider;

.field public final handlerProvider:Ljavax/inject/Provider;

.field public final policyProvider:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/leak/LeakModule;Ljavax/inject/Provider;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/util/leak/TrackedCollections_Factory$InstanceHolder;->INSTANCE:Lcom/android/systemui/util/leak/TrackedCollections_Factory;

    const/4 v1, 0x6

    iput v1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/systemui/doze/DozePauser_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 5

    iget v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->$r8$classId:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    new-instance v2, Lcom/google/android/systemui/columbus/gates/SetupWizard;

    invoke-direct {v2, v0, v1, p0}, Lcom/google/android/systemui/columbus/gates/SetupWizard;-><init>(Landroid/content/Context;Ljava/util/Set;Ldagger/Lazy;)V

    return-object v2

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/common/TaskStackListenerImpl;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/wm/shell/common/ShellExecutor;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x111015e

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-direct {v1, v0, v2, p0}, Lcom/android/wm/shell/recents/RecentTasksController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/TaskStackListenerImpl;Lcom/android/wm/shell/common/ShellExecutor;)V

    :goto_0
    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p0}, Lcom/android/systemui/R$menu;->checkNotNullFromProvides(Ljava/lang/Object;)V

    return-object p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/devicestate/DeviceStateManager;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/policy/DevicePostureControllerImpl;-><init>(Landroid/content/Context;Landroid/hardware/devicestate/DeviceStateManager;Ljava/util/concurrent/Executor;)V

    return-object v2

    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Optional;

    iget-object v1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    new-instance v2, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;-><init>(Ljava/util/Optional;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V

    return-object v2

    :pswitch_4
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/CrossWindowBlurListeners;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/dump/DumpManager;

    new-instance v2, Lcom/android/systemui/statusbar/BlurUtils;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/statusbar/BlurUtils;-><init>(Landroid/content/res/Resources;Landroid/view/CrossWindowBlurListeners;Lcom/android/systemui/dump/DumpManager;)V

    return-object v2

    :pswitch_5
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AlarmManager;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast p0, Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;

    new-instance v2, Lcom/android/systemui/doze/DozePauser;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/doze/DozePauser;-><init>(Landroid/os/Handler;Landroid/app/AlarmManager;Lcom/android/systemui/doze/AlwaysOnDisplayPolicy;)V

    return-object v2

    :goto_1
    iget-object v0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->policyProvider:Ljava/lang/Object;

    check-cast v0, Lcom/android/systemui/util/leak/LeakModule;

    iget-object v2, p0, Lcom/android/systemui/doze/DozePauser_Factory;->handlerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/dump/DumpManager;

    iget-object p0, p0, Lcom/android/systemui/doze/DozePauser_Factory;->alarmManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/leak/TrackedCollections;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Lcom/android/systemui/util/leak/LeakDetector;

    invoke-direct {p0, v1, v1, v1, v2}, Lcom/android/systemui/util/leak/LeakDetector;-><init>(Lcom/android/systemui/util/leak/TrackedCollections;Lcom/android/systemui/util/leak/TrackedGarbage;Lcom/android/systemui/util/leak/TrackedObjects;Lcom/android/systemui/dump/DumpManager;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
