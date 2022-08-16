.class final Lcom/android/keyguard/TextAnimator$setTextStyle$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextAnimator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/graphics/Typeface;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $weight:I

.field public final synthetic this$0:Lcom/android/keyguard/TextAnimator;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/TextAnimator;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->this$0:Lcom/android/keyguard/TextAnimator;

    iput p2, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->$weight:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->this$0:Lcom/android/keyguard/TextAnimator;

    iget-object v0, v0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object v0, v0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    iget v1, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->$weight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "\'wght\' "

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFontVariationSettings(Ljava/lang/String;)Z

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator$setTextStyle$1;->this$0:Lcom/android/keyguard/TextAnimator;

    iget-object p0, p0, Lcom/android/keyguard/TextAnimator;->textInterpolator:Lcom/android/keyguard/TextInterpolator;

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator;->targetPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object p0

    return-object p0
.end method
