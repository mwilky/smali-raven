.class public final Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;
.super Ljava/lang/Object;
.source "StackStateLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nStackStateLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 StackStateLogger.kt\ncom/android/systemui/statusbar/notification/stack/StackStateLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,60:1\n138#2,4:61\n138#2,4:65\n138#2,4:69\n138#2,4:73\n138#2,4:77\n138#2,4:81\n*S KotlinDebug\n*F\n+ 1 StackStateLogger.kt\ncom/android/systemui/statusbar/notification/stack/StackStateLogger\n*L\n12#1:61,4\n20#1:65,4\n28#1:69,4\n36#1:73,4\n44#1:77,4\n52#1:81,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    return-void
.end method


# virtual methods
.method public final disappearAnimationEnded(Ljava/lang/String;)V
    .locals 3

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    sget-object v1, Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$disappearAnimationEnded$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/stack/StackStateLogger$disappearAnimationEnded$2;

    const-string v2, "StackScroll"

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;)Lcom/android/systemui/log/LogMessageImpl;

    move-result-object v0

    iput-object p1, v0, Lcom/android/systemui/log/LogMessageImpl;->str1:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessageImpl;)V

    return-void
.end method
