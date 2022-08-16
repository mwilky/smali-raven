.class final Lcom/android/systemui/log/LogBuffer$buffer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "LogBuffer.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/log/LogBuffer;-><init>(Ljava/lang/String;ILcom/android/systemui/log/LogcatEchoTracker;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/log/LogMessageImpl;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/log/LogBuffer$buffer$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/log/LogBuffer$buffer$1;

    invoke-direct {v0}, Lcom/android/systemui/log/LogBuffer$buffer$1;-><init>()V

    sput-object v0, Lcom/android/systemui/log/LogBuffer$buffer$1;->INSTANCE:Lcom/android/systemui/log/LogBuffer$buffer$1;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    new-instance p0, Lcom/android/systemui/log/LogMessageImpl;

    sget-object v0, Lcom/android/systemui/log/LogMessageImplKt;->DEFAULT_RENDERER:Lkotlin/jvm/functions/Function1;

    invoke-direct {p0}, Lcom/android/systemui/log/LogMessageImpl;-><init>()V

    return-object p0
.end method
