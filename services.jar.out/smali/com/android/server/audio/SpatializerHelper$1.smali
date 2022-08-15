.class public Lcom/android/server/audio/SpatializerHelper$1;
.super Landroid/util/SparseIntArray;
.source "SpatializerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/SpatializerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/util/SparseIntArray;-><init>(I)V

    const/4 p1, 0x2

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x3

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x4

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x8

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0xd

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0xc

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0xb

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x16

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/4 p1, 0x6

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x13

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x17

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x1a

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x1b

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseIntArray;->append(II)V

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->append(II)V

    return-void
.end method
