.class public final Lcom/android/systemui/privacy/logging/PrivacyLoggerKt;
.super Ljava/lang/Object;
.source "PrivacyLogger.kt"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/systemui/privacy/logging/PrivacyLoggerKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method
