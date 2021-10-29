.class public final Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;
.super Ljava/lang/Object;
.source "KeyguardSmartspaceController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final featureFlagsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;"
        }
    .end annotation
.end field

.field private final mediaControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;",
            ">;"
        }
    .end annotation
.end field

.field private final zenControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;",
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
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->contextProvider:Ljavax/inject/Provider;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->zenControllerProvider:Ljavax/inject/Provider;

    iput-object p4, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->mediaControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;",
            ">;)",
            "Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;"
        }
    .end annotation

    new-instance v0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;
    .locals 1

    new-instance v0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;
    .locals 3

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->contextProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->featureFlagsProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->zenControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->mediaControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;

    invoke-static {v0, v1, v2, p0}, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->newInstance(Landroid/content/Context;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/google/android/systemui/smartspace/KeyguardZenAlarmViewController;Lcom/google/android/systemui/smartspace/KeyguardMediaViewController;)Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController_Factory;->get()Lcom/google/android/systemui/smartspace/KeyguardSmartspaceController;

    move-result-object p0

    return-object p0
.end method
