.class public final Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;
.super Ljava/lang/Object;
.source "GestureConfiguration.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGestureConfiguration.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GestureConfiguration.kt\ncom/google/android/systemui/columbus/sensors/config/GestureConfiguration\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,64:1\n1849#2,2:65\n1849#2,2:67\n*S KotlinDebug\n*F\n+ 1 GestureConfiguration.kt\ncom/google/android/systemui/columbus/sensors/config/GestureConfiguration\n*L\n36#1:65,2\n50#1:67,2\n*E\n"
.end annotation


# static fields
.field public static final SENSITIVITY_RANGE:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final adjustmentCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field public final adjustments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;"
        }
    .end annotation
.end field

.field public listener:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;

.field public sensitivity:F

.field public final sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    sput-object v0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            ">;",
            "Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->adjustments:Ljava/util/List;

    iput-object p2, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    new-instance v0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$adjustmentCallback$1;

    invoke-direct {v0, p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$adjustmentCallback$1;-><init>(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V

    iput-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->adjustmentCallback:Lkotlin/jvm/functions/Function1;

    iget p2, p2, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->defaultSensitivityValue:F

    iput p2, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensitivity:F

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->adjustmentCallback:Lkotlin/jvm/functions/Function1;

    iput-object v0, p2, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->callback:Lkotlin/jvm/functions/Function1;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->updateSensitivity()V

    return-void
.end method


# virtual methods
.method public final updateSensitivity()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensorConfiguration:Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;

    iget v0, v0, Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;->defaultSensitivityValue:F

    iget-object v1, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->adjustments:Ljava/util/List;

    check-cast v1, Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;

    sget-object v3, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    invoke-virtual {v2, v0}, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->adjustSensitivity(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensitivity:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const v2, 0x3d4ccccd    # 0.05f

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_2

    iput v0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->sensitivity:F

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->listener:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0, p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$Listener;->onGestureConfigurationChanged(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V

    :cond_2
    :goto_1
    return-void
.end method
