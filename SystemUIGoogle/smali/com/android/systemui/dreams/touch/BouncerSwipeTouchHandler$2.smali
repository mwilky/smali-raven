.class public final Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "BouncerSwipeTouchHandler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;


# direct methods
.method public constructor <init>(Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$2;->this$0:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;

    iget-object p0, p0, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object p1, Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;->DREAM_BOUNCER_FULLY_VISIBLE:Lcom/android/systemui/dreams/touch/BouncerSwipeTouchHandler$DreamEvent;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method
