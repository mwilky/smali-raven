.class final Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;
.super Landroidx/leanback/widget/BaseCardView$AnimationBase;
.source "BaseCardView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/leanback/widget/BaseCardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "InfoOffsetAnimation"
.end annotation


# instance fields
.field private mDelta:F

.field private mStartValue:F

.field final synthetic this$0:Landroidx/leanback/widget/BaseCardView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/BaseCardView;FF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "start",
            "end"
        }
    .end annotation

    iput-object p1, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    invoke-direct {p0, p1}, Landroidx/leanback/widget/BaseCardView$AnimationBase;-><init>(Landroidx/leanback/widget/BaseCardView;)V

    iput p2, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    sub-float/2addr p3, p2

    iput p3, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    return-void
.end method


# virtual methods
.method protected applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "interpolatedTime",
            "t"
        }
    .end annotation

    iget-object p2, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->this$0:Landroidx/leanback/widget/BaseCardView;

    iget v0, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mStartValue:F

    iget p0, p0, Landroidx/leanback/widget/BaseCardView$InfoOffsetAnimation;->mDelta:F

    mul-float/2addr p1, p0

    add-float/2addr v0, p1

    iput v0, p2, Landroidx/leanback/widget/BaseCardView;->mInfoOffset:F

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void
.end method
