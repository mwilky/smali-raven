.class public final Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;
.super Ljava/lang/Object;
.source "GoogleDefaultUiController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# instance fields
.field public final synthetic $r8$classId:I

.field public final assistManagerLazyProvider:Ljavax/inject/Provider;

.field public final contextProvider:Ljavax/inject/Provider;

.field public final googleAssistLoggerProvider:Ljavax/inject/Provider;

.field public final metricsLoggerProvider:Ljavax/inject/Provider;

.field public final windowManagerProvider:Ljavax/inject/Provider;


# direct methods
.method public synthetic constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V
    .locals 0

    iput p6, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->$r8$classId:I

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->googleAssistLoggerProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;
    .locals 8

    new-instance v7, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;

    const/4 v6, 0x1

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;I)V

    return-object v7
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->googleAssistLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/google/android/systemui/assist/GoogleAssistLogger;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/internal/logging/MetricsLogger;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v6

    new-instance p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController;-><init>(Landroid/content/Context;Lcom/google/android/systemui/assist/GoogleAssistLogger;Landroid/view/WindowManager;Lcom/android/internal/logging/MetricsLogger;Ldagger/Lazy;)V

    return-object p0

    :goto_0
    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->googleAssistLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->windowManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->metricsLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/phone/DozeParameters;

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/GoogleDefaultUiController_Factory;->assistManagerLazyProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;

    new-instance p0, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/ScreenOffAnimationController;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
