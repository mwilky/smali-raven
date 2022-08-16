.class public abstract Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;
.super Ljava/lang/Object;
.source "TouchAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/TouchAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "KeyframeSet"
.end annotation


# instance fields
.field public final mFrameWidth:F

.field public final mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mSize:I

    add-int/lit8 p1, p1, -0x1

    int-to-float p1, p1

    const/high16 v0, 0x3f800000    # 1.0f

    div-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/qs/TouchAnimator$KeyframeSet;->mFrameWidth:F

    return-void
.end method


# virtual methods
.method public abstract interpolate(IFLjava/lang/Object;)V
.end method
