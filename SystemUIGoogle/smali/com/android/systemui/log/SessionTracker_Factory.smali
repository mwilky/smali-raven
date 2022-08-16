.class public final Lcom/android/systemui/log/SessionTracker_Factory;
.super Ljava/lang/Object;
.source "SessionTracker_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final authControllerProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final keyguardStateControllerProvider:Ljavax/inject/Provider;

.field public final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

.field public final statusBarServiceProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/android/systemui/log/SessionTracker_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/log/SessionTracker_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/android/systemui/log/SessionTracker_Factory;->statusBarServiceProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/android/systemui/log/SessionTracker_Factory;->authControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/android/systemui/log/SessionTracker_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/android/systemui/log/SessionTracker_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/systemui/log/SessionTracker_Factory;
    .locals 8

    new-instance v7, Lcom/android/systemui/log/SessionTracker_Factory;

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/log/SessionTracker_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->statusBarServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/biometrics/AuthController;

    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    new-instance p0, Lcom/android/systemui/log/SessionTracker;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/log/SessionTracker;-><init>(Landroid/content/Context;Lcom/android/internal/statusbar/IStatusBarService;Lcom/android/systemui/biometrics/AuthController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->statusBarServiceProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->authControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/logging/UiEventLogger;

    iget-object v0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object p0, p0, Lcom/android/systemui/log/SessionTracker_Factory;->keyguardStateControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/google/android/systemui/autorotate/AutorotateDataService;

    new-instance p0, Lcom/google/android/systemui/GoogleServices;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/GoogleServices;-><init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/internal/logging/UiEventLogger;Ldagger/Lazy;Lcom/google/android/systemui/autorotate/AutorotateDataService;)V

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
