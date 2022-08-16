.class public final Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;
.super Ljava/lang/Object;
.source "QSFragmentDisableFlagsLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nQSFragmentDisableFlagsLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 QSFragmentDisableFlagsLogger.kt\ncom/android/systemui/qs/QSFragmentDisableFlagsLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,47:1\n138#2,4:48\n*S KotlinDebug\n*F\n+ 1 QSFragmentDisableFlagsLogger.kt\ncom/android/systemui/qs/QSFragmentDisableFlagsLogger\n*L\n26#1:48,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/DisableFlagsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;

    return-void
.end method
