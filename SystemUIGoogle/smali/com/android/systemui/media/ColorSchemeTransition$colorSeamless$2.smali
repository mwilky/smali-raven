.class final Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ColorSchemeTransition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/ColorSchemeTransition;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/ColorSchemeTransition;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition$colorSeamless$2;->this$0:Lcom/android/systemui/media/ColorSchemeTransition;

    iget-object p0, p0, Lcom/android/systemui/media/ColorSchemeTransition;->mediaViewHolder:Lcom/android/systemui/media/MediaViewHolder;

    iget-object p0, p0, Lcom/android/systemui/media/MediaViewHolder;->seamlessButton:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method