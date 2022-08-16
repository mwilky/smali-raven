.class final Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorSchemeTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/monet/ColorScheme;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $inner:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/android/systemui/monet/ColorScheme;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $targetAlpha:F

.field public final synthetic this$0:Lcom/android/systemui/media/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/ColorSchemeTransition;Lkotlin/jvm/functions/Function1;F)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/media/ColorSchemeTransition;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/android/systemui/monet/ColorScheme;",
            "Ljava/lang/Integer;",
            ">;F)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iput-object p2, p0, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;->$inner:Lkotlin/jvm/functions/Function1;

    iput p3, p0, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;->$targetAlpha:F

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/android/systemui/monet/ColorScheme;

    iget-object v0, p0, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-boolean v0, v0, Lcom/android/systemui/media/ColorSchemeTransition;->isGradientEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;->$inner:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iget p0, p0, Lcom/android/systemui/media/ColorSchemeTransition$albumGradientPicker$1;->$targetAlpha:F

    invoke-static {p1, p0}, Landroidx/leanback/R$style;->getColorWithAlpha(IF)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
