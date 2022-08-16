.class public final Lcom/android/systemui/log/LogBufferKt;
.super Ljava/lang/Object;
.source "LogBuffer.kt"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final FROZEN_MESSAGE:Lcom/android/systemui/log/LogMessageImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/log/LogBufferKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v0, Lcom/android/systemui/log/LogMessageImpl;

    sget-object v1, Lcom/android/systemui/log/LogMessageImplKt;->DEFAULT_RENDERER:Lkotlin/jvm/functions/Function1;

    invoke-direct {v0}, Lcom/android/systemui/log/LogMessageImpl;-><init>()V

    sput-object v0, Lcom/android/systemui/log/LogBufferKt;->FROZEN_MESSAGE:Lcom/android/systemui/log/LogMessageImpl;

    return-void
.end method
