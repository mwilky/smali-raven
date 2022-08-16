.class final Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$adjustmentCallback$1;
.super Lkotlin/jvm/internal/Lambda;
.source "GestureConfiguration.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;-><init>(Ljava/util/List;Lcom/google/android/systemui/columbus/sensors/config/SensorConfiguration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$adjustmentCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;

    iget-object p0, p0, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration$adjustmentCallback$1;->this$0:Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;

    sget-object p1, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->SENSITIVITY_RANGE:Landroid/util/Range;

    invoke-virtual {p0}, Lcom/google/android/systemui/columbus/sensors/config/GestureConfiguration;->updateSensitivity()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
