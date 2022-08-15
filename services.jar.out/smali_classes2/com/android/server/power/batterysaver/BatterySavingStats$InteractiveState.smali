.class public interface abstract Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySavingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InteractiveState"
.end annotation


# direct methods
.method public static fromIndex(I)I
    .locals 0

    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0x1

    return p0
.end method
