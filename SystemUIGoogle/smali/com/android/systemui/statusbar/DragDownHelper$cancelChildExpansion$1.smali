.class public final Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockscreenShadeTransitionController.kt"


# instance fields
.field public final synthetic $child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/DragDownHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Lcom/android/systemui/statusbar/notification/row/ExpandableView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->this$0:Lcom/android/systemui/statusbar/DragDownHelper;

    iget-object p1, p1, Lcom/android/systemui/statusbar/DragDownHelper;->expandCallback:Lcom/android/systemui/ExpandHelper$Callback;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$cancelChildExpansion$1;->$child:Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    const/4 v0, 0x0

    check-cast p1, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$11;->setUserLockedChild(Landroid/view/View;Z)V

    return-void
.end method
