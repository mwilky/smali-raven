.class public final Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "ComplicationLayoutParams.java"


# static fields
.field public static final INVALID_DIRECTIONS:Ljava/util/HashMap;

.field public static final INVALID_POSITIONS:[I


# instance fields
.field public final mDirection:I

.field public final mPosition:I

.field public final mSnapToGuide:Z

.field public final mWeight:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->INVALID_POSITIONS:[I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->INVALID_DIRECTIONS:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x3
        0xc
    .end array-data
.end method

.method public constructor <init>(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;-><init>(IIIIZ)V

    return-void
.end method

.method public constructor <init>(IIIIZ)V
    .locals 6

    const/4 v0, -0x2

    invoke-direct {p0, p1, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->INVALID_POSITIONS:[I

    const/4 v2, 0x2

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    and-int v5, p2, v4

    if-ne v5, v4, :cond_1

    :goto_1
    move v1, v0

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    move v1, p1

    :goto_2
    if-eqz v1, :cond_6

    iput p2, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mPosition:I

    move v1, p1

    :goto_3
    const/16 v2, 0x8

    if-gt v1, v2, :cond_4

    and-int v2, p2, v1

    if-ne v2, v1, :cond_3

    sget-object v2, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->INVALID_DIRECTIONS:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    and-int/2addr v2, p3

    if-eqz v2, :cond_3

    move p1, v0

    goto :goto_4

    :cond_3
    shl-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz p1, :cond_5

    iput p3, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mDirection:I

    iput p4, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mWeight:I

    iput-boolean p5, p0, Lcom/android/systemui/dreams/complication/ComplicationLayoutParams;->mSnapToGuide:Z

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid direction:"

    invoke-static {p1, p3}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "invalid position:"

    invoke-static {p1, p2}, Lcom/android/systemui/tuner/NavBarTuner$$ExternalSyntheticLambda2;->m(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
