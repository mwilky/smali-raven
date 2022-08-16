.class final Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;
.super Lkotlin/jvm/internal/Lambda;
.source "NPVCDownEventState.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NPVCDownEventState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    sget-object v1, Lcom/android/systemui/statusbar/phone/NPVCDownEventStateKt;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-wide v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->timeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->x:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->y:F

    invoke-static {v2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->qsTouchAboveFalsingThreshold:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->dozing:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->collapsed:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->canCollapseOnQQS:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->listenForHeadsUp:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->allowExpandForSmallExpansion:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean v2, v2, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->touchSlopExceededBeforeDown:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;->this$0:Lcom/android/systemui/statusbar/phone/NPVCDownEventState;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->lastEventSynthesized:Z

    invoke-static {p0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
