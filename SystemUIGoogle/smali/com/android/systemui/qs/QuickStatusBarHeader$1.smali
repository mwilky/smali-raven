.class public final Lcom/android/systemui/qs/QuickStatusBarHeader$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "QuickStatusBarHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QuickStatusBarHeader;->updateAlphaAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QuickStatusBarHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationAtEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSingleCarrier:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object v0, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRssiIgnoredSlots:Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final onAnimationAtStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/policy/VariableDateView;->freezeSwitching:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v1, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mShowClockIconsSeparator:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRssiIgnoredSlots:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->removeIgnoredSlots(Ljava/util/List;)V

    return-void
.end method

.method public final onAnimationStarted()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v2, v0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mClockDateView:Lcom/android/systemui/statusbar/policy/VariableDateView;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/systemui/statusbar/policy/VariableDateView;->freezeSwitching:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QuickStatusBarHeader;->setSeparatorVisibility(Z)V

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader$1;->this$0:Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-boolean v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIsSingleCarrier:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mIconContainer:Lcom/android/systemui/statusbar/phone/StatusIconContainer;

    iget-object p0, p0, Lcom/android/systemui/qs/QuickStatusBarHeader;->mRssiIgnoredSlots:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->addIgnoredSlots(Ljava/util/List;)V

    :cond_0
    return-void
.end method
