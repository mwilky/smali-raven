.class public final Lcom/android/systemui/qs/QSSecurityFooter_Factory;
.super Ljava/lang/Object;
.source "QSSecurityFooter_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final activityStarterProvider:Ljavax/inject/Provider;

.field public final bgLooperProvider:Ljavax/inject/Provider;

.field public final broadcastDispatcherProvider:Ljavax/inject/Provider;

.field public final dialogLaunchAnimatorProvider:Ljavax/inject/Provider;

.field public final mainHandlerProvider:Ljavax/inject/Provider;

.field public final rootViewProvider:Ljavax/inject/Provider;

.field public final securityControllerProvider:Ljavax/inject/Provider;

.field public final userTrackerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p9, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->securityControllerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->dialogLaunchAnimatorProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSSecurityFooter_Factory;
    .locals 11

    new-instance v10, Lcom/android/systemui/qs/QSSecurityFooter_Factory;

    const/4 v9, 0x0

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v10
.end method

.method public static create$1(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/qs/QSSecurityFooter_Factory;
    .locals 11

    new-instance v10, Lcom/android/systemui/qs/QSSecurityFooter_Factory;

    const/4 v9, 0x1

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v10
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 10

    iget v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/settings/UserTracker;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->securityControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/statusbar/policy/SecurityController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->dialogLaunchAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/animation/DialogLaunchAnimator;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Landroid/os/Looper;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    new-instance p0, Lcom/android/systemui/qs/QSSecurityFooter;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/qs/QSSecurityFooter;-><init>(Landroid/view/View;Lcom/android/systemui/settings/UserTracker;Landroid/os/Handler;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/SecurityController;Lcom/android/systemui/animation/DialogLaunchAnimator;Landroid/os/Looper;Lcom/android/systemui/broadcast/BroadcastDispatcher;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->rootViewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->userTrackerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->mainHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->activityStarterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->securityControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->dialogLaunchAnimatorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->bgLooperProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/util/time/SystemClock;

    iget-object p0, p0, Lcom/android/systemui/qs/QSSecurityFooter_Factory;->broadcastDispatcherProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v9, p0

    check-cast v9, Lcom/android/internal/logging/UiEventLogger;

    new-instance p0, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;

    move-object v1, p0

    invoke-direct/range {v1 .. v9}, Lcom/android/systemui/statusbar/charging/WiredChargingRippleController;-><init>(Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/flags/FeatureFlags;Landroid/content/Context;Landroid/view/WindowManager;Lcom/android/systemui/util/time/SystemClock;Lcom/android/internal/logging/UiEventLogger;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
