.class public final Lcom/android/systemui/assist/DeviceConfigHelper;
.super Ljava/lang/Object;
.source "DeviceConfigHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLong(JLjava/lang/String;)J
    .locals 1

    new-instance v0, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/assist/DeviceConfigHelper$$ExternalSyntheticLambda0;-><init>(JLjava/lang/String;)V

    invoke-static {v0}, Lcom/android/systemui/DejankUtils;->whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    return-wide p0
.end method
