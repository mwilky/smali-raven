.class public final Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;
.super Ljava/lang/Object;
.source "ColumbusModule_ProvideGestureAdjustmentsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Ljava/util/List<",
        "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final lowSensitivitySettingAdjustmentProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;->lowSensitivitySettingAdjustmentProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;",
            ">;)",
            "Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideGestureAdjustments(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;",
            ")",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusModule;->provideGestureAdjustments(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;->get()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public get()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;->lowSensitivitySettingAdjustmentProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;

    invoke-static {p0}, Lcom/google/android/systemui/columbus/ColumbusModule_ProvideGestureAdjustmentsFactory;->provideGestureAdjustments(Lcom/google/android/systemui/columbus/sensors/config/LowSensitivitySettingAdjustment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
