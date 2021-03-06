.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideGestureSensorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/columbus/sensors/GestureSensor;",
        ">;"
    }
.end annotation


# instance fields
.field private final apGestureSensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;",
            ">;"
        }
    .end annotation
.end field

.field private final chreGestureSensorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
            ">;"
        }
    .end annotation
.end field

.field private final columbusSettingsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->columbusSettingsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->chreGestureSensorProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->apGestureSensorProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/google/android/systemui/columbus/ColumbusSettings;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/sensors/CHREGestureSensor;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensorImpl;",
            ">;)",
            "Lcom/google/android/systemui/columbus/sensors/GestureSensor;"
        }
    .end annotation

    invoke-static {p0, p1, p2, p3}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/columbus/sensors/GestureSensor;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->columbusSettingsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/systemui/columbus/ColumbusSettings;

    iget-object v2, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->chreGestureSensorProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->apGestureSensorProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object p0

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->provideGestureSensor(Landroid/content/Context;Lcom/google/android/systemui/columbus/ColumbusSettings;Ldagger/Lazy;Ldagger/Lazy;)Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureSensorFactory;->get()Lcom/google/android/systemui/columbus/sensors/GestureSensor;

    move-result-object p0

    return-object p0
.end method
