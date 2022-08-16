.class public final Landroidx/palette/graphics/ColorCutQuantizer$1;
.super Ljava/lang/Object;
.source "ColorCutQuantizer.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/ColorCutQuantizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroidx/palette/graphics/ColorCutQuantizer$Vbox;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    check-cast p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;

    iget p0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr p0, v0

    add-int/lit8 p0, p0, 0x1

    iget v0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v1, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p0

    iget p0, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget p2, p2, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr p0, p2

    add-int/lit8 p0, p0, 0x1

    mul-int/2addr p0, v0

    iget p2, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxRed:I

    iget v0, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinRed:I

    sub-int/2addr p2, v0

    add-int/lit8 p2, p2, 0x1

    iget v0, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxGreen:I

    iget v1, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinGreen:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, p2

    iget p2, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMaxBlue:I

    iget p1, p1, Landroidx/palette/graphics/ColorCutQuantizer$Vbox;->mMinBlue:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    mul-int/2addr p2, v0

    sub-int/2addr p0, p2

    return p0
.end method
