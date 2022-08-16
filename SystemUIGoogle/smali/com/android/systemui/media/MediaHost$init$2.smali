.class public final Lcom/android/systemui/media/MediaHost$init$2;
.super Ljava/lang/Object;
.source "MediaHost.kt"

# interfaces
.implements Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/media/MediaHost;->init(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic $location:I

.field public final synthetic this$0:Lcom/android/systemui/media/MediaHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/MediaHost;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/media/MediaHost$init$2;->this$0:Lcom/android/systemui/media/MediaHost;

    iput p2, p0, Lcom/android/systemui/media/MediaHost$init$2;->$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMeasure(Lcom/android/systemui/util/animation/MeasurementInput;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 4

    iget v0, p1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    iget v0, p1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    invoke-static {v0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iput v0, p1, Lcom/android/systemui/util/animation/MeasurementInput;->widthMeasureSpec:I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/MediaHost$init$2;->this$0:Lcom/android/systemui/media/MediaHost;

    iget-object v0, v0, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    iget-object v3, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    invoke-virtual {p1, v3}, Lcom/android/systemui/util/animation/MeasurementInput;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-ne v3, v2, :cond_1

    move v1, v2

    :cond_1
    if-nez v1, :cond_3

    iput-object p1, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    iget-object p1, v0, Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :goto_0
    iget-object p1, p0, Lcom/android/systemui/media/MediaHost$init$2;->this$0:Lcom/android/systemui/media/MediaHost;

    iget-object v0, p1, Lcom/android/systemui/media/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/MediaHostStatesManager;

    iget p0, p0, Lcom/android/systemui/media/MediaHost$init$2;->$location:I

    iget-object p1, p1, Lcom/android/systemui/media/MediaHost;->state:Lcom/android/systemui/media/MediaHost$MediaHostStateHolder;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/media/MediaHostStatesManager;->updateCarouselDimensions(ILcom/android/systemui/media/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    move-result-object p0

    return-object p0
.end method
