.class public final Lcom/android/keyguard/TextInterpolator$FontRun;
.super Ljava/lang/Object;
.source "TextInterpolator.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/TextInterpolator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FontRun"
.end annotation


# instance fields
.field public baseFont:Landroid/graphics/fonts/Font;

.field public final end:I

.field public final start:I

.field public targetFont:Landroid/graphics/fonts/Font;


# direct methods
.method public constructor <init>(IILandroid/graphics/fonts/Font;Landroid/graphics/fonts/Font;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    iput p2, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    iput-object p3, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iput-object p4, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/TextInterpolator$FontRun;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/android/keyguard/TextInterpolator$FontRun;

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    iget v3, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    iget v3, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    iget-object v3, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    iget-object p1, p1, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Lcom/android/keyguard/FontInterpolator$VarFontKey$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v1}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    invoke-virtual {p0}, Landroid/graphics/fonts/Font;->hashCode()I

    move-result p0

    add-int/2addr p0, v1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FontRun(start="

    invoke-static {v0}, Landroid/frameworks/stats/VendorAtomValue$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->end:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", baseFont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->baseFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", targetFont="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/keyguard/TextInterpolator$FontRun;->targetFont:Landroid/graphics/fonts/Font;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
