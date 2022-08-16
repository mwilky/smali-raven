.class final Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "NPVCDownEventState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/android/systemui/statusbar/phone/NPVCDownEventState;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;

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
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;-><init>()V

    return-object p0
.end method
