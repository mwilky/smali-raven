.class public final Lcom/android/wm/shell/bubbles/BadgedImageView$1;
.super Landroid/view/ViewOutlineProvider;
.source "BadgedImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/BadgedImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BadgedImageView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BadgedImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$1;->this$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView$1;->this$0:Lcom/android/wm/shell/bubbles/BadgedImageView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BadgedImageView;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    iget p0, p0, Lcom/android/wm/shell/bubbles/BubblePositioner;->mBubbleSize:I

    mul-int p1, p0, p0

    int-to-float p1, p1

    const v0, 0x3f28e38e

    mul-float/2addr p1, v0

    const/high16 v0, 0x40800000    # 4.0f

    mul-float/2addr p1, v0

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J

    move-result-wide v0

    long-to-int p1, v0

    sub-int/2addr p0, p1

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    invoke-virtual {p2, p0, p0, p1, p1}, Landroid/graphics/Outline;->setOval(IIII)V

    return-void
.end method
