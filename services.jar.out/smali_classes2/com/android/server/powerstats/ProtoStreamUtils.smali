.class public Lcom/android/server/powerstats/ProtoStreamUtils;
.super Ljava/lang/Object;
.source "ProtoStreamUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;,
        Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;,
        Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;,
        Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;,
        Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;,
        Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ProtoStreamUtils"


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/powerstats/ProtoStreamUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method
