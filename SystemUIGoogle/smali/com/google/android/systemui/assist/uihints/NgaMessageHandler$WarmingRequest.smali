.class public final Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;
.super Ljava/lang/Object;
.source "NgaMessageHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/systemui/assist/uihints/NgaMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WarmingRequest"
.end annotation


# instance fields
.field public final onWarm:Landroid/app/PendingIntent;

.field public final threshold:F


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->onWarm:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Lcom/android/systemui/R$raw;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->threshold:F

    return-void
.end method
