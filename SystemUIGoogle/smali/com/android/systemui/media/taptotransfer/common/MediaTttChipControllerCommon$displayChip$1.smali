.class final synthetic Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon$displayChip$1;
.super Lkotlin/jvm/internal/FunctionReferenceImpl;
.source "MediaTttChipControllerCommon.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->displayChip(Lcom/android/systemui/media/taptotransfer/common/ChipInfoCommon;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1001
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/FunctionReferenceImpl;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/MotionEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;)V
    .locals 7

    const-class v3, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;

    const/4 v1, 0x1

    const-string/jumbo v4, "onScreenTapped"

    const-string/jumbo v5, "onScreenTapped(Landroid/view/MotionEvent;)V"

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lkotlin/jvm/internal/FunctionReferenceImpl;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Landroid/view/MotionEvent;

    iget-object p0, p0, Lkotlin/jvm/internal/CallableReference;->receiver:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->chipView:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->viewUtil:Lcom/android/systemui/util/view/ViewUtil;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v2, p1}, Lcom/android/systemui/util/view/ViewUtil;->touchIsWithinView(Landroid/view/View;FF)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "SCREEN_TAP"

    invoke-virtual {p0, p1}, Lcom/android/systemui/media/taptotransfer/common/MediaTttChipControllerCommon;->removeChip(Ljava/lang/String;)V

    :cond_1
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method
