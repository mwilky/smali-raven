.class Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BcSmartspaceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/BcSmartspaceView;->animateSmartspaceUpdate(Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

.field final synthetic val$animParent:Landroid/view/ViewGroup;

.field final synthetic val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/view/ViewGroup;Lcom/google/android/systemui/smartspace/BcSmartspaceCard;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->val$animParent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->val$animParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$702(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Landroid/animation/Animator;)Landroid/animation/Animator;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->this$0:Lcom/google/android/systemui/smartspace/BcSmartspaceView;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/systemui/smartspace/BcSmartspaceView;->access$802(Lcom/google/android/systemui/smartspace/BcSmartspaceView;Z)Z

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    iget-object p1, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->val$animParent:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    move-result-object p1

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/BcSmartspaceView$2;->val$oldCard:Lcom/google/android/systemui/smartspace/BcSmartspaceCard;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    return-void
.end method
