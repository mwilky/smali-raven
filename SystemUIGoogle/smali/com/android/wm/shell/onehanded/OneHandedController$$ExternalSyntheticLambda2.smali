.class public final synthetic Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/keyguard/PasswordTextView$UserActivityListener;
.implements Lcom/android/wm/shell/onehanded/OneHandedTouchHandler$OneHandedTouchEventCallback;
.implements Lcom/google/android/systemui/dreamliner/WirelessCharger$AlignInfoListener;


# instance fields
.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAlignInfoChanged(Lcom/google/android/systemui/dreamliner/DockAlignInfo;)V
    .locals 6

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;

    iget v0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    sget-boolean v1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    const-string v2, "DockAlignmentController"

    if-eqz v1, :cond_0

    const-string v1, "onAlignInfo, state: "

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p1, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", alignPct: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignPct:I

    invoke-static {v1, v3, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_0
    iget v1, p1, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    if-eqz v1, :cond_4

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v1, v4, :cond_5

    const/4 v5, -0x1

    if-eq v1, v3, :cond_1

    const/4 v3, 0x3

    if-eq v1, v3, :cond_6

    const-string v1, "Unexpected state: "

    invoke-static {v1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget p1, p1, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignState:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget p1, p1, Lcom/google/android/systemui/dreamliner/DockAlignInfo;->mAlignPct:I

    if-gez p1, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    const/16 v1, 0x64

    if-ge p1, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v4, 0x0

    :goto_0
    move v5, v4

    goto :goto_1

    :cond_4
    move v3, v0

    :cond_5
    move v5, v3

    :cond_6
    :goto_1
    iput v5, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    if-eq v0, v5, :cond_8

    iget-object p1, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mDockAlignmentStateChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/systemui/dreamliner/DockAlignmentController$DockAlignmentStateChangeListener;

    invoke-interface {v0, v5}, Lcom/google/android/systemui/dreamliner/DockAlignmentController$DockAlignmentStateChangeListener;->onDockAlignmentStateChanged(I)V

    goto :goto_2

    :cond_7
    sget-boolean p1, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->DEBUG:Z

    if-eqz p1, :cond_8

    const-string p1, "onAlignStateChanged, state: "

    invoke-static {p1}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/google/android/systemui/dreamliner/DockAlignmentController;->mAlignmentState:I

    invoke-static {p1, p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    :cond_8
    return-void
.end method

.method public final onStop()V
    .locals 1

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedController;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/wm/shell/onehanded/OneHandedController;->stopOneHanded(I)V

    return-void
.end method

.method public final onUserActivity()V
    .locals 0

    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedController$$ExternalSyntheticLambda2;->f$0:Ljava/lang/Object;

    check-cast p0, Lcom/android/keyguard/KeyguardPinBasedInputViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardAbsKeyInputViewController;->onUserInput()V

    return-void
.end method
