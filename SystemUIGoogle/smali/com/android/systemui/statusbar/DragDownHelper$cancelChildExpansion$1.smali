.class public final Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenShadeTransitionController.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DragDownHelper;->cancelChildExpansion(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    const-string v0, "animation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/DragDownHelper;->getExpandCallback()Lcom/android/systemui/ExpandHelper$Callback;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/ExpandHelper$Callback;->setUserLockedChild(Landroid/view/View;Z)V

    return-void
.end method
