.class public final Lcom/android/systemui/media/MediaCarouselControllerLogger;
.super Ljava/lang/Object;
.source "MediaCarouselControllerLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nMediaCarouselControllerLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 MediaCarouselControllerLogger.kt\ncom/android/systemui/media/MediaCarouselControllerLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,46:1\n138#2,4:47\n*S KotlinDebug\n*F\n+ 1 MediaCarouselControllerLogger.kt\ncom/android/systemui/media/MediaCarouselControllerLogger\n*L\n34#1:47,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/media/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final logPotentialMemoryLeak(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/media/MediaCarouselControllerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/media/MediaCarouselControllerLogger$logPotentialMemoryLeak$2;->INSTANCE:Lcom/android/systemui/media/MediaCarouselControllerLogger$logPotentialMemoryLeak$2;

    const-string v2, "MediaCarouselCtlrLog"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method
