.class public final Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ExpandableViewState.java"


# instance fields
.field public final synthetic val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic val$clipTop:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$clipTop:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$clipTop:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->$r8$clinit:I

    const v0, 0x7f0b06d4

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState;->$r8$clinit:I

    const v0, 0x7f0b0105

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$clipTop:Z

    if-eqz v0, :cond_1

    const v0, 0x7f0b06d3

    goto :goto_1

    :cond_1
    const v0, 0x7f0b0104

    :goto_1
    invoke-virtual {p1, v0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/stack/ExpandableViewState$3;->val$clipTop:Z

    if-eqz p0, :cond_2

    const p0, 0x7f0b06d2

    goto :goto_2

    :cond_2
    const p0, 0x7f0b0103

    :goto_2
    invoke-virtual {p1, p0, v1}, Landroid/widget/FrameLayout;->setTag(ILjava/lang/Object;)V

    return-void
.end method
