.class public final Lcom/android/wm/shell/legacysplitscreen/DividerView$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DividerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/legacysplitscreen/DividerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/legacysplitscreen/DividerView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {p1}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object p1

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v0

    const v1, 0x7f0b006a

    const v2, 0x7f0b0069

    const v3, 0x7f0b006b

    const v4, 0x7f0b006c

    const v5, 0x7f0b006d

    if-eqz v0, :cond_3

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$000(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f130038

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$100(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130037

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$200(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f130036

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$300(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f130035

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_2
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$400(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f13002f

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0

    :cond_3
    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v6, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v6}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$500(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f130033

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isFirstSplitTargetAvailable()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v5, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v5}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$600(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f130032

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->showMiddleSplitTargetForAccessibility()Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v4, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v4}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$700(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f130031

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/policy/DividerSnapAlgorithm;->isLastSplitTargetAvailable()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$800(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f130030

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :cond_6
    new-instance p1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    iget-object p0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-static {p0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->access$900(Lcom/android/wm/shell/legacysplitscreen/DividerView;)Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f130034

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, v2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    invoke-virtual {p2, p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    :goto_0
    return-void
.end method

.method public final performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->isHorizontalDivision()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionY:I

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mDividerPositionX:I

    :goto_0
    move v2, v0

    iget-object v0, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    iget-object v0, v0, Lcom/android/wm/shell/legacysplitscreen/DividerView;->mSplitLayout:Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;

    invoke-virtual {v0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitDisplayLayout;->getSnapAlgorithm()Lcom/android/internal/policy/DividerSnapAlgorithm;

    move-result-object v0

    const v1, 0x7f0b006d

    if-ne p2, v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissEndTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    :goto_1
    move-object v3, v0

    goto :goto_2

    :cond_1
    const v1, 0x7f0b006c

    if-ne p2, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getLastSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    :cond_2
    const v1, 0x7f0b006b

    if-ne p2, v1, :cond_3

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getMiddleTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    :cond_3
    const v1, 0x7f0b006a

    if-ne p2, v1, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getFirstSplitTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    :cond_4
    const v1, 0x7f0b0069

    if-ne p2, v1, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/policy/DividerSnapAlgorithm;->getDismissStartTarget()Lcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;

    move-result-object v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_1

    :goto_2
    if-eqz v3, :cond_6

    iget-object p1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p3, p2}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->startDragging(ZZ)Z

    iget-object v1, p0, Lcom/android/wm/shell/legacysplitscreen/DividerView$1;->this$0:Lcom/android/wm/shell/legacysplitscreen/DividerView;

    const-wide/16 v4, 0xfa

    sget-object v8, Lcom/android/wm/shell/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/PathInterpolator;

    const-wide/16 v6, 0x0

    invoke-virtual/range {v1 .. v8}, Lcom/android/wm/shell/legacysplitscreen/DividerView;->stopDragging(ILcom/android/internal/policy/DividerSnapAlgorithm$SnapTarget;JJLandroid/view/animation/PathInterpolator;)V

    return p3

    :cond_6
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    return p0
.end method
