.class public abstract Lcom/android/server/tare/Modifier;
.super Ljava/lang/Object;
.source "Modifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract dump(Landroid/util/IndentingPrintWriter;)V
.end method

.method public getModifiedCostToProduce(J)J
    .locals 0

    return-wide p1
.end method

.method public getModifiedPrice(J)J
    .locals 0

    return-wide p1
.end method

.method public abstract setup()V
.end method

.method public abstract tearDown()V
.end method
