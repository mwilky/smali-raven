.class public final Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;
.super Lcom/android/systemui/decor/CornerDecorProvider;
.source "PrivacyDotDecorProviderFactory.kt"


# instance fields
.field public final alignedBound1:I

.field public final alignedBound2:I

.field public final layoutId:I

.field public final viewId:I


# direct methods
.method public constructor <init>(IIII)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/decor/CornerDecorProvider;-><init>()V

    iput p1, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->viewId:I

    iput p2, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound1:I

    iput p3, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound2:I

    iput p4, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->layoutId:I

    return-void
.end method


# virtual methods
.method public final getAlignedBound1()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound1:I

    return p0
.end method

.method public final getAlignedBound2()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->alignedBound2:I

    return p0
.end method

.method public final getViewId()I
    .locals 0

    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->viewId:I

    return p0
.end method

.method public final inflateView(Landroid/content/Context;Lcom/android/systemui/RegionInterceptingFrameLayout;I)Landroid/view/View;
    .locals 0

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iget p0, p0, Lcom/android/systemui/decor/PrivacyDotCornerDecorProviderImpl;->layoutId:I

    const/4 p3, 0x1

    invoke-virtual {p1, p0, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p0

    sub-int/2addr p0, p3

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public final onReloadResAndMeasure(Landroid/view/View;IILjava/lang/String;)V
    .locals 0

    return-void
.end method
