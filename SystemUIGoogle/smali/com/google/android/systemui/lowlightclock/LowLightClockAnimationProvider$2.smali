.class public final Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LowLightClockAnimationProvider.java"


# instance fields
.field public final synthetic val$callback:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$OnAnimationEndCallback;


# direct methods
.method public constructor <init>(Lcom/google/android/systemui/lowlightclock/LowLightClockControllerImpl$$ExternalSyntheticLambda1;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$2;->val$callback:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$OnAnimationEndCallback;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    iget-object p0, p0, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$2;->val$callback:Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$OnAnimationEndCallback;

    invoke-interface {p0}, Lcom/google/android/systemui/lowlightclock/LowLightClockAnimationProvider$OnAnimationEndCallback;->onAnimationEnd()V

    return-void
.end method
