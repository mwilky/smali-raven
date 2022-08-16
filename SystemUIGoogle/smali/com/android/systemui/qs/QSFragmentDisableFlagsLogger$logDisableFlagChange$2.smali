.class final Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;
.super Lkotlin/jvm/internal/Lambda;
.source "QSFragmentDisableFlagsLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/log/LogMessage;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;->this$0:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    check-cast p1, Lcom/android/systemui/log/LogMessage;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger$logDisableFlagChange$2;->this$0:Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;

    iget-object p0, p0, Lcom/android/systemui/qs/QSFragmentDisableFlagsLogger;->disableFlagsLogger:Lcom/android/systemui/statusbar/DisableFlagsLogger;

    const/4 v0, 0x0

    new-instance v1, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt1()I

    move-result v2

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getInt2()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;-><init>(II)V

    new-instance v2, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong1()J

    move-result-wide v3

    long-to-int v3, v3

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getLong2()J

    move-result-wide v4

    long-to-int p1, v4

    invoke-direct {v2, v3, p1}, Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;-><init>(II)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/DisableFlagsLogger;->getDisableFlagsString(Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;Lcom/android/systemui/statusbar/DisableFlagsLogger$DisableState;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
