.class Lcom/android/server/display/RampAnimator$DualRampAnimator;
.super Ljava/lang/Object;
.source "RampAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/RampAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DualRampAnimator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final mFirst:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final mInternalListener:Lcom/android/server/display/RampAnimator$Listener;

.field private mListener:Lcom/android/server/display/RampAnimator$Listener;

.field private final mSecond:Lcom/android/server/display/RampAnimator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/display/RampAnimator<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Landroid/util/FloatProperty;Landroid/util/FloatProperty;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/util/FloatProperty<",
            "TT;>;",
            "Landroid/util/FloatProperty<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;

    invoke-direct {v0, p0}, Lcom/android/server/display/RampAnimator$DualRampAnimator$1;-><init>(Lcom/android/server/display/RampAnimator$DualRampAnimator;)V

    iput-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mInternalListener:Lcom/android/server/display/RampAnimator$Listener;

    new-instance v1, Lcom/android/server/display/RampAnimator;

    invoke-direct {v1, p1, p2}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1, v0}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    new-instance v1, Lcom/android/server/display/RampAnimator;

    invoke-direct {v1, p1, p3}, Lcom/android/server/display/RampAnimator;-><init>(Ljava/lang/Object;Landroid/util/FloatProperty;)V

    iput-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1, v0}, Lcom/android/server/display/RampAnimator;->setListener(Lcom/android/server/display/RampAnimator$Listener;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/display/RampAnimator$DualRampAnimator;)Lcom/android/server/display/RampAnimator$Listener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-object v0
.end method


# virtual methods
.method public animateTo(FFF)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v1, p2, p3}, Lcom/android/server/display/RampAnimator;->animateTo(FF)Z

    move-result v1

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public isAnimating()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mFirst:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mSecond:Lcom/android/server/display/RampAnimator;

    invoke-virtual {v0}, Lcom/android/server/display/RampAnimator;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public setListener(Lcom/android/server/display/RampAnimator$Listener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/RampAnimator$DualRampAnimator;->mListener:Lcom/android/server/display/RampAnimator$Listener;

    return-void
.end method
