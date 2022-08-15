.class public Lcom/android/server/display/DensityMapping;
.super Ljava/lang/Object;
.source "DensityMapping.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DensityMapping$Entry;
    }
.end annotation


# instance fields
.field public final mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;


# direct methods
.method public static synthetic $r8$lambda$xFXh2oerFieTO7wAJHpJfRN11Qc(Lcom/android/server/display/DensityMapping$Entry;)I
    .locals 0

    invoke-static {p0}, Lcom/android/server/display/DensityMapping;->lambda$new$0(Lcom/android/server/display/DensityMapping$Entry;)I

    move-result p0

    return p0
.end method

.method public constructor <init>([Lcom/android/server/display/DensityMapping$Entry;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/server/display/DensityMapping$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/DensityMapping$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    iput-object p1, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    invoke-static {p1}, Lcom/android/server/display/DensityMapping;->verifyDensityMapping([Lcom/android/server/display/DensityMapping$Entry;)V

    return-void
.end method

.method public static createByOwning([Lcom/android/server/display/DensityMapping$Entry;)Lcom/android/server/display/DensityMapping;
    .locals 1

    new-instance v0, Lcom/android/server/display/DensityMapping;

    invoke-direct {v0, p0}, Lcom/android/server/display/DensityMapping;-><init>([Lcom/android/server/display/DensityMapping$Entry;)V

    return-object v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/server/display/DensityMapping$Entry;)I
    .locals 0

    iget p0, p0, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    return p0
.end method

.method public static verifyDensityMapping([Lcom/android/server/display/DensityMapping$Entry;)V
    .locals 6

    const/4 v0, 0x1

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_2

    add-int/lit8 v1, v0, -0x1

    aget-object v1, p0, v1

    aget-object v2, p0, v0

    iget v3, v1, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    iget v4, v2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    const-string v5, ", "

    if-eq v3, v4, :cond_1

    iget v3, v1, Lcom/android/server/display/DensityMapping$Entry;->density:I

    iget v4, v2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    if-gt v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two entries in the density mapping with increasing diagonal but decreasing density: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Found two entries in the density mapping with the same diagonal: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method


# virtual methods
.method public getDensityForResolution(II)I
    .locals 7

    mul-int/2addr p1, p1

    mul-int/2addr p2, p2

    add-int/2addr p1, p2

    sget-object p2, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    iget-object p0, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    iget v3, v2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    if-gt v3, p1, :cond_1

    add-int/lit8 v1, v1, 0x1

    move-object p2, v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    iget p0, p2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    if-ne p0, p1, :cond_2

    iget p0, p2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    return p0

    :cond_2
    if-nez v2, :cond_3

    sget-object p0, Lcom/android/server/display/DensityMapping$Entry;->ZEROES:Lcom/android/server/display/DensityMapping$Entry;

    move-object v2, p2

    move-object p2, p0

    :cond_3
    iget p0, p2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    int-to-double v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iget p0, v2, Lcom/android/server/display/DensityMapping$Entry;->squaredDiagonal:I

    int-to-double v3, p0

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    int-to-double p0, p1

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr p0, v0

    iget v2, v2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    iget p2, p2, Lcom/android/server/display/DensityMapping$Entry;->density:I

    sub-int/2addr v2, p2

    int-to-double v5, v2

    mul-double/2addr p0, v5

    sub-double/2addr v3, v0

    div-double/2addr p0, v3

    int-to-double v0, p2

    add-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DensityMapping{mDensityMappingEntries="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/DensityMapping;->mSortedDensityMappingEntries:[Lcom/android/server/display/DensityMapping$Entry;

    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
