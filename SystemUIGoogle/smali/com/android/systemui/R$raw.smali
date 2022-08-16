.class public final Lcom/android/systemui/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# static fields
.field public static final sDefault:Lcom/android/systemui/R$raw;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/R$raw;

    invoke-direct {v0}, Lcom/android/systemui/R$raw;-><init>()V

    sput-object v0, Lcom/android/systemui/R$raw;->sDefault:Lcom/android/systemui/R$raw;

    return-void
.end method

.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clamp(FFF)F
    .locals 1

    cmpg-float v0, p0, p1

    if-gez v0, :cond_0

    return p1

    :cond_0
    cmpl-float p1, p0, p2

    if-lez p1, :cond_1

    return p2

    :cond_1
    return p0
.end method

.method public static clamp(III)I
    .locals 0

    if-ge p0, p1, :cond_0

    return p1

    :cond_0
    if-le p0, p2, :cond_1

    return p2

    :cond_1
    return p0
.end method
