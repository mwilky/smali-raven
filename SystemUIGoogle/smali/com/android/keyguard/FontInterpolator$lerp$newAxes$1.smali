.class final Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FontInterpolator.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/FontInterpolator;->lerp(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)Landroid/graphics/fonts/Font;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Ljava/lang/String;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic $progress:F

.field public final synthetic this$0:Lcom/android/keyguard/FontInterpolator;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/FontInterpolator;F)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/keyguard/FontInterpolator;

    iput p2, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->$progress:F

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Float;

    check-cast p3, Ljava/lang/Float;

    const-string/jumbo v0, "wght"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/keyguard/FontInterpolator;

    const/high16 v0, 0x43c80000    # 400.0f

    if-nez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_0
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_1
    iget p0, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->$progress:F

    invoke-static {p2, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    const/high16 p2, 0x447a0000    # 1000.0f

    const/high16 p3, 0x41200000    # 10.0f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Lcom/android/keyguard/FontInterpolator;->coerceInWithStep(FFF)F

    move-result p0

    goto :goto_5

    :cond_2
    const-string v0, "ital"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->this$0:Lcom/android/keyguard/FontInterpolator;

    const/4 v0, 0x0

    if-nez p2, :cond_3

    move p2, v0

    goto :goto_2

    :cond_3
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    :goto_2
    if-nez p3, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_3
    iget p0, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->$progress:F

    invoke-static {p2, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3dcccccd    # 0.1f

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p2, p3}, Lcom/android/keyguard/FontInterpolator;->coerceInWithStep(FFF)F

    move-result p0

    goto :goto_5

    :cond_5
    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p2

    iget p0, p0, Lcom/android/keyguard/FontInterpolator$lerp$newAxes$1;->$progress:F

    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    :goto_5
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0

    :cond_7
    const-string p0, "Unable to interpolate due to unknown default axes value : "

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
