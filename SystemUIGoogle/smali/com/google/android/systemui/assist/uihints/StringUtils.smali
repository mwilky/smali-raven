.class public final Lcom/google/android/systemui/assist/uihints/StringUtils;
.super Ljava/lang/Object;
.source "StringUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;
    }
.end annotation


# direct methods
.method public static getRightMostStabilityInfoLeaf(Ljava/lang/String;IIII[[I)Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;
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

    move v0, p1

    move v1, v3

    move v2, v4

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

    invoke-direct {p1, p3, p0}, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;-><init>(ILjava/lang/String;)V

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

    invoke-direct {p1, v1, p0}, Lcom/google/android/systemui/assist/uihints/StringUtils$StringStabilityInfo;-><init>(ILjava/lang/String;)V

    return-object p1
.end method
