.class public final Lcom/android/systemui/monet/HueAdd;
.super Ljava/lang/Object;
.source "ColorScheme.kt"

# interfaces
.implements Lcom/android/systemui/monet/Hue;


# instance fields
.field public final amountDegrees:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/android/systemui/monet/HueAdd;->amountDegrees:D

    return-void
.end method


# virtual methods
.method public final get(Lcom/android/internal/graphics/cam/Cam;)D
    .locals 4

    invoke-virtual {p1}, Lcom/android/internal/graphics/cam/Cam;->getHue()F

    move-result p1

    float-to-double v0, p1

    iget-wide p0, p0, Lcom/android/systemui/monet/HueAdd;->amountDegrees:D

    add-double/2addr v0, p0

    const-wide/16 p0, 0x0

    cmpg-double p0, v0, p0

    const/16 p1, 0x168

    if-gez p0, :cond_0

    int-to-double p0, p1

    rem-double/2addr v0, p0

    add-double/2addr v0, p0

    goto :goto_0

    :cond_0
    const-wide v2, 0x4076800000000000L    # 360.0

    cmpl-double p0, v0, v2

    if-ltz p0, :cond_1

    int-to-double p0, p1

    rem-double/2addr v0, p0

    :cond_1
    :goto_0
    return-wide v0
.end method
