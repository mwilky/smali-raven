.class final Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SquigglyProgress.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/SquigglyProgress;->draw(Landroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $transitionLength:F

.field public final synthetic $waveEnd:F

.field public final synthetic this$0:Lcom/android/systemui/media/SquigglyProgress;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/SquigglyProgress;FF)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;->this$0:Lcom/android/systemui/media/SquigglyProgress;

    iput p2, p0, Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;->$waveEnd:F

    iput p3, p0, Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;->$transitionLength:F

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->floatValue()F

    move-result p2

    iget-object v0, p0, Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;->this$0:Lcom/android/systemui/media/SquigglyProgress;

    iget v1, v0, Lcom/android/systemui/media/SquigglyProgress;->heightFraction:F

    mul-float/2addr p2, v1

    iget v0, v0, Lcom/android/systemui/media/SquigglyProgress;->lineAmplitude:F

    mul-float/2addr p2, v0

    iget v0, p0, Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;->$waveEnd:F

    iget p0, p0, Lcom/android/systemui/media/SquigglyProgress$draw$computeAmplitude$1;->$transitionLength:F

    sub-float p0, v0, p0

    invoke-static {v0, p0, p1}, Landroid/util/MathUtils;->lerpInvSat(FFF)F

    move-result p0

    mul-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
