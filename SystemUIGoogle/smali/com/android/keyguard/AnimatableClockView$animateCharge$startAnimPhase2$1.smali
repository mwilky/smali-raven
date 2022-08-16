.class public final Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;
.super Ljava/lang/Object;
.source "AnimatableClockView.kt"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $dozeStateGetter:Lcom/android/keyguard/AnimatableClockView$DozeStateGetter;

.field public final synthetic this$0:Lcom/android/keyguard/AnimatableClockView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AnimatableClockView;Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;->this$0:Lcom/android/keyguard/AnimatableClockView;

    iput-object p2, p0, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;->$dozeStateGetter:Lcom/android/keyguard/AnimatableClockView$DozeStateGetter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    iget-object v0, p0, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;->this$0:Lcom/android/keyguard/AnimatableClockView;

    iget-object v1, p0, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;->$dozeStateGetter:Lcom/android/keyguard/AnimatableClockView$DozeStateGetter;

    check-cast v1, Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;

    invoke-virtual {v1}, Lcom/android/keyguard/AnimatableClockController$1$$ExternalSyntheticLambda0;->isDozing()Z

    move-result v1

    iget-object p0, p0, Lcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;->this$0:Lcom/android/keyguard/AnimatableClockView;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v4, 0x64

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-le v1, v4, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    iget p0, p0, Lcom/android/keyguard/AnimatableClockView;->dozingWeightInternal:I

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-le v1, v4, :cond_2

    goto :goto_1

    :cond_2
    move v2, v3

    :goto_1
    iget p0, p0, Lcom/android/keyguard/AnimatableClockView;->lockScreenWeightInternal:I

    if-eqz v2, :cond_3

    :goto_2
    add-int/lit8 p0, p0, 0x64

    :cond_3
    move v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x3e8

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    sget p0, Lcom/android/keyguard/AnimatableClockView;->$r8$clinit:I

    invoke-virtual/range {v0 .. v8}, Lcom/android/keyguard/AnimatableClockView;->setTextStyle(ILjava/lang/Integer;ZJJLcom/android/keyguard/AnimatableClockView$animateCharge$startAnimPhase2$1;)V

    return-void
.end method
