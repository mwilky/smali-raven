.class public final Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;
.super Ljava/lang/Object;
.source "MediaTttLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaTttLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaTttLogger.kt\ncom/android/systemui/media/taptotransfer/common/MediaTttLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,57:1\n138#2,4:58\n138#2,4:62\n*S KotlinDebug\n*F\n+ 1 MediaTttLogger.kt\ncom/android/systemui/media/taptotransfer/common/MediaTttLogger\n*L\n34#1:58,4\n47#1:62,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final deviceTypeTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;->deviceTypeTag:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logStateChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger;->deviceTypeTag:Ljava/lang/String;

    const-string v1, "MediaTtt"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v2, Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger$logStateChange$2;->INSTANCE:Lcom/android/systemui/media/taptotransfer/common/MediaTttLogger$logStateChange$2;

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object p0

    iput-object p1, p0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/systemui/log/LogMessageImpl;->str2:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method
