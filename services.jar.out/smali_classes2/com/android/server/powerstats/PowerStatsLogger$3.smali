.class Lcom/android/server/powerstats/PowerStatsLogger$3;
.super Ljava/lang/Object;
.source "PowerStatsLogger.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/powerstats/PowerStatsLogger;->writeResidencyDataToFile(Ljava/io/FileDescriptor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/powerstats/PowerStatsLogger;

.field final synthetic val$pos:Landroid/util/proto/ProtoOutputStream;


# direct methods
.method constructor <init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger$3;->this$0:Lcom/android/server/powerstats/PowerStatsLogger;

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger$3;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReadDataElement([B)V
    .locals 3

    :try_start_0
    new-instance v0, Landroid/util/proto/ProtoInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Landroid/util/proto/ProtoInputStream;-><init>(Ljava/io/InputStream;)V

    nop

    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->unpackProtoMessage([B)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/powerstats/PowerStatsLogger$3;->val$pos:Landroid/util/proto/ProtoOutputStream;

    invoke-static {v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->packProtoMessage([Landroid/hardware/power/stats/StateResidencyResult;Landroid/util/proto/ProtoOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsLogger;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Failed to write residency data to incident report."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
