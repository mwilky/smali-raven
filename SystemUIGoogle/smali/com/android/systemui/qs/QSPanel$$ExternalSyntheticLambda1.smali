.class public final synthetic Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSPanel;

    return-void
.end method


# virtual methods
.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSPanel;

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_1

    sub-int p1, p5, p3

    sub-int/2addr p9, p7

    if-eq p1, p9, :cond_0

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/systemui/qs/QSPanel;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/qs/QSPanel;->mClippingRect:Landroid/graphics/Rect;

    iput p4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p5, p3

    iput p5, p1, Landroid/graphics/Rect;->bottom:I

    iget-object p0, p0, Lcom/android/systemui/qs/QSPanel;->mHorizontalContentContainer:Lcom/android/internal/widget/RemeasuringLinearLayout;

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_1
    return-void
.end method
