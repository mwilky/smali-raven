.class public final Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;
.super Landroidx/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "InfoHeightAnimation"
.end annotation


# instance fields
.field public mDelta:F

.field public mStartValue:F

.field public final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseCardView;FF)V
    .locals 0

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    sub-float/2addr p3, p2

    iput p3, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mStartValue:F

    iget p0, p0, Landroidx/leanback/widget/BaseCardView$InfoHeightAnimation;->mDelta:F

    mul-float/2addr p1, p0

    add-float/2addr p1, v0

    iput p1, p2, Landroidx/leanback/widget/BaseCardView;->mInfoVisFraction:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
