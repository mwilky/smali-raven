.class public abstract Lcom/google/android/systemui/columbus/sensors/config/Adjustment;
.super Ljava/lang/Object;
.source "Adjustment.kt"


# instance fields
.field private callback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public abstract adjustSensitivity(F)F
.end method

.method protected final onSensitivityChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->callback:Lkotlin/jvm/functions/Function1;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/google/android/systemui/columbus/sensors/config/Adjustment;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/google/android/systemui/columbus/sensors/config/Adjustment;->callback:Lkotlin/jvm/functions/Function1;

    return-void
.end method
