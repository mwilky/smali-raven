.class public Lcom/android/server/tare/EconomicPolicy$Action;
.super Ljava/lang/Object;
.source "EconomicPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tare/EconomicPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field public final basePrice:J

.field public final costToProduce:J

.field public final id:I


# direct methods
.method public constructor <init>(IJJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/tare/EconomicPolicy$Action;->id:I

    iput-wide p2, p0, Lcom/android/server/tare/EconomicPolicy$Action;->costToProduce:J

    iput-wide p4, p0, Lcom/android/server/tare/EconomicPolicy$Action;->basePrice:J

    return-void
.end method
