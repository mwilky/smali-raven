.class public final Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$runChipAnimation$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SystemStatusAnimationScheduler.kt"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$runChipAnimation$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler$runChipAnimation$1;->this$0:Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;

    const/4 p1, 0x3

    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationScheduler;->animationState:I

    return-void
.end method
