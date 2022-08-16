.class public final Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$1;
.super Ljava/lang/Object;
.source "DreamlinerA11yAction.java"

# interfaces
.implements Lcom/google/android/systemui/dreamliner/DreamlinerA11yAction$ActionWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final remove(Landroid/view/View;I)V
    .locals 0

    invoke-static {p1, p2}, Landroidx/core/view/ViewCompat;->removeActionWithId(Landroid/view/View;I)V

    const/4 p0, 0x0

    invoke-static {p1, p0}, Landroidx/core/view/ViewCompat;->notifyViewAccessibilityStateChangedIfNeeded(Landroid/view/View;I)V

    return-void
.end method
