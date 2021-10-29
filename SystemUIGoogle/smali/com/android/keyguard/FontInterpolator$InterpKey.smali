.class final Lcom/android/keyguard/FontInterpolator$InterpKey;
.super Ljava/lang/Object;
.source "FontInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/FontInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InterpKey"
.end annotation


# instance fields
.field private l:Landroid/graphics/fonts/Font;

.field private progress:F

.field private r:Landroid/graphics/fonts/Font;


# direct methods
.method public constructor <init>(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iput-object p2, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iput p3, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/FontInterpolator$InterpKey;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/keyguard/FontInterpolator$InterpKey;

    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iget-object v3, p1, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iget-object v3, p1, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget p0, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    iget p1, p1, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget p0, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    invoke-static {p0}, Ljava/lang/Float;->hashCode(F)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final set(Landroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;F)V
    .locals 1

    const-string v0, "l"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "r"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    iput-object p2, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    iput p3, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InterpKey(l="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->l:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->r:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/keyguard/FontInterpolator$InterpKey;->progress:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
