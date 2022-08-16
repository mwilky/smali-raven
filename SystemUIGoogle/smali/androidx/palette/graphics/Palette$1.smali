.class public final Landroidx/palette/graphics/Palette$1;
.super Ljava/lang/Object;
.source "Palette.java"

# interfaces
.implements Landroidx/palette/graphics/Palette$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/palette/graphics/Palette;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final isAllowed([F)Z
    .locals 3

    const/4 p0, 0x2

    aget p0, p1, p0

    const v0, 0x3f733333    # 0.95f

    cmpl-float v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ltz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v0, :cond_3

    const v0, 0x3d4ccccd    # 0.05f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_1

    move p0, v1

    goto :goto_1

    :cond_1
    move p0, v2

    :goto_1
    if-nez p0, :cond_3

    aget p0, p1, v2

    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v0, p0, v0

    if-ltz v0, :cond_2

    const/high16 v0, 0x42140000    # 37.0f

    cmpg-float p0, p0, v0

    if-gtz p0, :cond_2

    aget p0, p1, v1

    const p1, 0x3f51eb85    # 0.82f

    cmpg-float p0, p0, p1

    if-gtz p0, :cond_2

    move p0, v1

    goto :goto_2

    :cond_2
    move p0, v2

    :goto_2
    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    move v1, v2

    :goto_3
    return v1
.end method
