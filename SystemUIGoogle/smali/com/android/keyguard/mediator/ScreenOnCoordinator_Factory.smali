.class public final Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;
.super Ljava/lang/Object;
.source "ScreenOnCoordinator_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final executionProvider:Ljavax/inject/Provider;

.field public final screenLifecycleProvider:Ljavax/inject/Provider;

.field public final unfoldComponentProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p4, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->unfoldComponentProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->executionProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/ScreenLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->unfoldComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Optional;

    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->executionProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/Execution;

    new-instance v2, Lcom/android/keyguard/mediator/ScreenOnCoordinator;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/keyguard/mediator/ScreenOnCoordinator;-><init>(Lcom/android/systemui/keyguard/ScreenLifecycle;Ljava/util/Optional;Lcom/android/systemui/util/concurrency/Execution;)V

    return-object v2

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->screenLifecycleProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/flags/FeatureFlags;

    iget-object v1, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->unfoldComponentProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    iget-object p0, p0, Lcom/android/keyguard/mediator/ScreenOnCoordinator_Factory;->executionProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/util/concurrency/Execution;

    new-instance v2, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;

    invoke-direct {v2, v0, v1, p0}, Lcom/android/systemui/smartspace/preconditions/LockscreenPrecondition;-><init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Lcom/android/systemui/util/concurrency/Execution;)V

    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
