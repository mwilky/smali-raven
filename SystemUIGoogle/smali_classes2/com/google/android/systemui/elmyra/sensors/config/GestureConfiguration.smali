.class public Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;
.super Ljava/lang/Object;
.source "GestureConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;
    }
.end annotation


# static fields
.field private static final SENSITIVITY_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAdjustmentCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

.field private mSensitivity:F

.field private final mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;


# direct methods
.method public static synthetic $r8$lambda$MGFKPOxEZ0KI5gxCx24qchMz1XY(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->lambda$new$1(Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TMkI5GT7vbbO_tWhcM96GAUIRIE(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)Ljava/lang/Float;
    .locals 0

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->lambda$getUserSensitivity$3()Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$a6sfvZMrorVkBLeeklPXGya3GjI(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->lambda$new$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rM1qImlh8z-CUCrumcAozrHRtio(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->lambda$new$0(Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda2;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustmentCallback:Ljava/util/function/Consumer;

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustments:Ljava/util/List;

    new-instance p2, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda1;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    invoke-interface {v0, p2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    new-instance p2, Lcom/google/android/systemui/elmyra/UserContentObserver;

    const-string v0, "assist_gesture_sensitivity"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda0;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    invoke-direct {p2, p1, v0, v1}, Lcom/google/android/systemui/elmyra/UserContentObserver;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/util/function/Consumer;)V

    iput-object p2, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSettingsObserver:Lcom/google/android/systemui/elmyra/UserContentObserver;

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getUserSensitivity()F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    return-void
.end method

.method private getUserSensitivity()F
    .locals 2

    new-instance v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$$ExternalSyntheticLambda3;-><init>(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Float;

    invoke-virtual {p0}, Ljava/lang/Float;->floatValue()F

    move-result p0

    sget-object v0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v0

    if-nez v0, :cond_0

    const/high16 p0, 0x3f000000    # 0.5f

    :cond_0
    return p0
.end method

.method private synthetic lambda$getUserSensitivity$3()Ljava/lang/Float;
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "assist_gesture_sensitivity"

    const/high16 v1, 0x3f000000    # 0.5f

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$0(Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->onSensitivityChanged()V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustmentCallback:Ljava/util/function/Consumer;

    invoke-virtual {p1, p0}, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->setCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$new$2(Landroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->onSensitivityChanged()V

    return-void
.end method


# virtual methods
.method public getSensitivity()F
    .locals 4

    iget v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustments:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    iget-object v3, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mAdjustments:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;

    invoke-virtual {v3, v0}, Lcom/google/android/systemui/elmyra/sensors/config/Adjustment;->adjustSensitivity(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public onSensitivityChanged()V
    .locals 1

    invoke-direct {p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->getUserSensitivity()F

    move-result v0

    iput v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mSensitivity:F

    iget-object v0, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;->onGestureConfigurationChanged(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;)V

    :cond_0
    return-void
.end method

.method public setListener(Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration;->mListener:Lcom/google/android/systemui/elmyra/sensors/config/GestureConfiguration$Listener;

    return-void
.end method
