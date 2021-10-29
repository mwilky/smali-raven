.class public final Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;
.super Landroid/widget/LinearLayout;
.source "DualHeightHorizontalLinearLayout.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDualHeightHorizontalLinearLayout.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DualHeightHorizontalLinearLayout.kt\ncom/android/systemui/util/DualHeightHorizontalLinearLayout\n*L\n1#1,170:1\n161#1,9:171\n161#1,9:180\n*E\n*S KotlinDebug\n*F\n+ 1 DualHeightHorizontalLinearLayout.kt\ncom/android/systemui/util/DualHeightHorizontalLinearLayout\n*L\n152#1,9:171\n153#1,9:180\n*E\n"
.end annotation


# instance fields
.field private initialPadding:I

.field private singleLineHeightPx:I

.field private final singleLineHeightValue:Landroid/util/TypedValue;

.field private singleLineVerticalPaddingPx:I

.field private final singleLineVerticalPaddingValue:Landroid/util/TypedValue;

.field private textView:Landroid/widget/TextView;

.field private final textViewId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iget v0, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    iput v0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->initialPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/systemui/R$styleable;->DualHeightHorizontalLinearLayout:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    sget p3, Lcom/android/systemui/R$styleable;->DualHeightHorizontalLinearLayout_singleLineHeight:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    goto :goto_0

    :cond_0
    move-object p2, v0

    :goto_0
    iput-object p2, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineHeightValue:Landroid/util/TypedValue;

    new-instance p2, Landroid/util/TypedValue;

    invoke-direct {p2}, Landroid/util/TypedValue;-><init>()V

    sget p3, Lcom/android/systemui/R$styleable;->DualHeightHorizontalLinearLayout_singleLineVerticalPadding:I

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getValue(ILandroid/util/TypedValue;)Z

    move-object v0, p2

    :cond_1
    iput-object v0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineVerticalPaddingValue:Landroid/util/TypedValue;

    sget p2, Lcom/android/systemui/R$styleable;->DualHeightHorizontalLinearLayout_textViewId:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->textViewId:I

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->updateResources()V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This view should always have horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p6, p5, 0x4

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p3, v0

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move p4, v0

    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public static final synthetic access$getDisplayMetrics(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;)Landroid/util/DisplayMetrics;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSingleLineHeightPx$p(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineHeightPx:I

    return p0
.end method

.method public static final synthetic access$getSingleLineVerticalPaddingPx$p(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineVerticalPaddingPx:I

    return p0
.end method

.method public static final synthetic access$setSingleLineHeightPx$p(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineHeightPx:I

    return-void
.end method

.method public static final synthetic access$setSingleLineVerticalPaddingPx$p(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineVerticalPaddingPx:I

    return-void
.end method

.method private final getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const-string v0, "context.resources.displayMetrics"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final updateResources()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineHeightValue:Landroid/util/TypedValue;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMinimumHeight()I

    move-result v1

    new-instance v2, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout$updateResources$2;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout$updateResources$2;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->access$getDisplayMetrics(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;)Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    move v1, v0

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineVerticalPaddingValue:Landroid/util/TypedValue;

    const/4 v1, 0x0

    new-instance v2, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout$updateResources$4;

    invoke-direct {v2, p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout$updateResources$4;-><init>(Ljava/lang/Object;)V

    if-nez v0, :cond_2

    goto :goto_3

    :cond_2
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_2

    :cond_3
    invoke-static {p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->access$getDisplayMetrics(Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;)Landroid/util/DisplayMetrics;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    :goto_2
    move v1, p0

    :goto_3
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v2, p0}, Lkotlin/reflect/KMutableProperty0;->set(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-direct {p0}, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->updateResources()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    iget v0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->textViewId:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->textView:Landroid/widget/TextView;

    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object p1, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->textView:Landroid/widget/TextView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getLineCount()I

    move-result p1

    const/4 p2, 0x2

    if-ge p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p1

    iget p2, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->singleLineHeightPx:I

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    const/4 p1, 0x0

    iput p1, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    iput p1, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->initialPadding:I

    iput p1, p0, Landroid/widget/LinearLayout;->mPaddingBottom:I

    iput p1, p0, Landroid/widget/LinearLayout;->mPaddingTop:I

    :goto_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "This view should always have horizontal orientation"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPadding(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    iput p2, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->initialPadding:I

    return-void
.end method

.method public setPaddingRelative(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->setPaddingRelative(IIII)V

    iput p2, p0, Lcom/android/systemui/util/DualHeightHorizontalLinearLayout;->initialPadding:I

    return-void
.end method
