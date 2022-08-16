.class public final Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;
.super Ljava/lang/Object;
.source "CollapsedStatusBarFragmentLogger.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCollapsedStatusBarFragmentLogger.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CollapsedStatusBarFragmentLogger.kt\ncom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger\n+ 2 LogBuffer.kt\ncom/android/systemui/log/LogBuffer\n*L\n1#1,63:1\n138#2,4:64\n*S KotlinDebug\n*F\n+ 1 CollapsedStatusBarFragmentLogger.kt\ncom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger\n*L\n42#1:64,4\n*E\n"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/log/LogBuffer;

.field public final disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/log/LogBuffer;Lcom/android/systemui/statusbar/DisableFlagsLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/fragment/CollapsedStatusBarFragmentLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;

    return-void
.end method
