.class final Lcom/android/keyguard/TextAnimator$setTextStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/TextAnimator;->setTextStyle(IFLjava/lang/Integer;ZJLandroid/animation/TimeInterpolator;JLjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $weight:I

.field final synthetic this$0:Lcom/android/keyguard/TextAnimator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/TextAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->this$0:Lcom/android/keyguard/TextAnimator;

    iput p2, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->$weight:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/graphics/Typeface;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->this$0:Lcom/android/keyguard/TextAnimator;

    invoke-virtual {v0}, Lcom/android/keyguard/TextAnimator;->getTextInterpolator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/keyguard/TextInterpolator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/TextInterpolator;->getTargetPaint()Landroid/text/TextPaint;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->$weight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\'wght\' "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->this$0:Lcom/android/keyguard/TextAnimator;

    invoke-virtual {p0}, Lcom/android/keyguard/TextAnimator;->getTextInterpolator$frameworks__base__packages__SystemUI__android_common__SystemUI_core()Lcom/android/keyguard/TextInterpolator;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/keyguard/TextInterpolator;->getTargetPaint()Landroid/text/TextPaint;

    move-result-object p0

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->invoke()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
