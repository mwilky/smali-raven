.class public final Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;
.super Ljava/lang/Object;
.source "LaunchOpa_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/actions/LaunchOpa;",
        ">;"
    }
.end annotation


# instance fields
.field private final assistManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;"
        }
    .end annotation
.end field

.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final feedbackEffectsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;>;"
        }
    .end annotation
.end field

.field private final keyguardManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;"
        }
    .end annotation
.end field

.field private final settingsObserverFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
            ">;"
        }
    .end annotation
.end field

.field private final statusBarProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field

.field private final uiEventLoggerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->statusBarProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->feedbackEffectsProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    iput-object p5, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    iput-object p6, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    iput-object p7, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->settingsObserverFactoryProvider:Ljavax/inject/Provider;

    iput-object p8, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Ljavax/inject/Provider<",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;>;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/assist/AssistManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/internal/logging/UiEventLogger;",
            ">;)",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v9
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/LaunchOpa;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            "Ljava/util/Set<",
            "Lcom/google/android/systemui/columbus/feedback/FeedbackEffect;",
            ">;",
            "Lcom/android/systemui/assist/AssistManager;",
            "Ldagger/Lazy<",
            "Landroid/app/KeyguardManager;",
            ">;",
            "Lcom/android/systemui/tuner/TunerService;",
            "Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;",
            "Lcom/android/internal/logging/UiEventLogger;",
            ")",
            "Lcom/google/android/systemui/columbus/actions/LaunchOpa;"
        }
    .end annotation

    new-instance v9, Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/google/android/systemui/columbus/actions/LaunchOpa;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v9
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/actions/LaunchOpa;
    .locals 9

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/content/Context;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->statusBarProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->feedbackEffectsProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->assistManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/assist/AssistManager;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->keyguardManagerProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v5

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/tuner/TunerService;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->settingsObserverFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->uiEventLoggerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v8, p0

    check-cast v8, Lcom/android/internal/logging/UiEventLogger;

    invoke-static/range {v1 .. v8}, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Ljava/util/Set;Lcom/android/systemui/assist/AssistManager;Ldagger/Lazy;Lcom/android/systemui/tuner/TunerService;Lcom/google/android/systemui/columbus/ColumbusContentObserver$Factory;Lcom/android/internal/logging/UiEventLogger;)Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/actions/LaunchOpa_Factory;->get()Lcom/google/android/systemui/columbus/actions/LaunchOpa;

    move-result-object p0

    return-object p0
.end method
