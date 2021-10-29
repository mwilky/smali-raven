.class public Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;
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
.field private final onWarm:Landroid/app/PendingIntent;

.field private final threshold:F


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;F)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->onWarm:Landroid/app/PendingIntent;

    const/4 p1, 0x0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p2, p1, v0}, Landroidx/core/math/MathUtils;->clamp(FFF)F

    move-result p1

    iput p1, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->threshold:F

    return-void
.end method


# virtual methods
.method public getThreshold()F
    .locals 0

    iget p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->threshold:F

    return p0
.end method

.method public notify(Landroid/content/Context;Z)V
    .locals 3

    iget-object p0, p0, Lcom/google/android/systemui/assist/uihints/NgaMessageHandler$WarmingRequest;->onWarm:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "primed"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p0, p1, v0, p2}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "NgaMessageHandler"

    const-string p2, "Unable to warm assistant, PendingIntent cancelled"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method
