.class public final Lcom/google/android/systemui/dreamliner/DockGestureController$1;
.super Ljava/lang/Object;
.source "DockGestureController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/dreamliner/DockGestureController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/dreamliner/DockGestureController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    iget-object v0, v0, Lcom/google/android/systemui/dreamliner/DockGestureController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/google/android/systemui/dreamliner/DockGestureController$1;->this$0:Lcom/google/android/systemui/dreamliner/DockGestureController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/systemui/dreamliner/DockGestureController;->hidePhotoPreview(Z)V

    :cond_0
    return-void
.end method
