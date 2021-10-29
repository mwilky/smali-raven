.class final Lcom/google/android/systemui/assist/uihints/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;
    }
.end annotation


# direct methods
.method private static calculateLongestCommonSubstringMatrix(Ljava/lang/String;Ljava/lang/String;)[[I
    .locals 9

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    aput v1, v2, v3

    const/4 v1, 0x0

    aput v0, v2, v1

    const-class v0, I

    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    move v2, v1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v1

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v4, v6, :cond_3

    const/16 v6, 0x20

    if-ne v4, v6, :cond_0

    move v6, v1

    goto :goto_2

    :cond_0
    move v6, v3

    :goto_2
    if-eqz v2, :cond_2

    if-nez v5, :cond_1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v2, -0x1

    aget-object v7, v0, v7

    add-int/lit8 v8, v5, -0x1

    aget v7, v7, v8

    goto :goto_4

    :cond_2
    :goto_3
    move v7, v1

    :goto_4
    aget-object v8, v0, v2

    add-int/2addr v7, v6

    aput v7, v8, v5

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return-object v0
.end method

.method public static calculateStringStabilityInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;
    .locals 8

    invoke-static {p0}, Lcom/google/android/systemui/assist/uihints/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/google/android/systemui/assist/uihints/StringUtils;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/systemui/assist/uihints/StringUtils;->calculateLongestCommonSubstringMatrix(Ljava/lang/String;Ljava/lang/String;)[[I

    move-result-object v7

    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lcom/google/android/systemui/assist/uihints/StringUtils;->getRightMostStabilityInfoLeaf(Ljava/lang/String;IIII[[I)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    const-string v0, ""

    invoke-direct {p0, v0, p1}, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method private static getRightMostStabilityInfoLeaf(Ljava/lang/String;IIII[[I)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;
    .locals 6

    const/4 v0, -0x1

    const/4 v1, 0x0

    move v2, v1

    move v1, v0

    :goto_0
    if-ge p1, p2, :cond_2

    move v3, p3

    :goto_1
    if-ge v3, p4, :cond_1

    aget-object v4, p5, p1

    aget v4, v4, v3

    if-le v4, v2, :cond_0

    aget-object v0, p5, p1

    aget v2, v0, v3

    move v0, p1

    move v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    new-instance p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    add-int/lit8 p3, p3, -0x1

    invoke-direct {p1, p0, p3}, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;-><init>(Ljava/lang/String;I)V

    return-object p1

    :cond_3
    add-int/lit8 p1, v0, 0x1

    if-eq p1, p2, :cond_5

    add-int/lit8 v3, v1, 0x1

    if-ne v3, p4, :cond_4

    goto :goto_2

    :cond_4
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/google/android/systemui/assist/uihints/StringUtils;->getRightMostStabilityInfoLeaf(Ljava/lang/String;IIII[[I)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    move-result-object p0

    return-object p0

    :cond_5
    :goto_2
    new-instance p1, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;

    invoke-direct {p1, p0, v1}, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;-><init>(Ljava/lang/String;I)V

    return-object p1
.end method

.method private static isNullOrEmpty(Ljava/lang/String;)Z
    .locals 0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
