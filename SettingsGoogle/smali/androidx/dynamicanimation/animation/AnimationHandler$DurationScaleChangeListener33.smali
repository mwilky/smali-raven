.class public Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;
.super Ljava/lang/Object;
.source "AnimationHandler.java"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/dynamicanimation/animation/AnimationHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DurationScaleChangeListener33"
.end annotation


# instance fields
.field mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

.field final synthetic this$0:Landroidx/dynamicanimation/animation/AnimationHandler;


# direct methods
.method public static synthetic $r8$lambda$hT9IyNAPChI-QGBtY3UHfGsL8mE(Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->lambda$register$0(F)V

    return-void
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V
    .locals 0

    iput-object p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$register$0(F)V
    .locals 0

    iget-object p0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->this$0:Landroidx/dynamicanimation/animation/AnimationHandler;

    iput p1, p0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    return-void
.end method


# virtual methods
.method public register()Z
    .locals 1

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;)V

    iput-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    invoke-static {v0}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public unregister()Z
    .locals 2

    iget-object v0, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    invoke-static {v0}, Landroid/animation/ValueAnimator;->unregisterDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    move-result v0

    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33;->mListener:Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    return v0
.end method
