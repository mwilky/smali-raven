.class final Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;
.super Lkotlin/jvm/internal/Lambda;
.source "LSShadeTransitionLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger;->logTryGoToLockedShade(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/android/systemui/log/LogMessage;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;->INSTANCE:Lcom/android/systemui/statusbar/phone/LSShadeTransitionLogger$logTryGoToLockedShade$2;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/systemui/log/LogMessage;

    invoke-interface {p1}, Lcom/android/systemui/log/LogMessage;->getBool1()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "from keyguard"

    goto :goto_0

    :cond_0
    const-string p0, "not from keyguard"

    :goto_0
    const-string p1, "Trying to go to locked shade "

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method