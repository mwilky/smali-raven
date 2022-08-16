.class public final Lcom/android/systemui/statusbar/phone/NPVCDownEventState;
.super Ljava/lang/Object;
.source "NPVCDownEventState.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer;
    }
.end annotation


# static fields
.field public static final TABLE_HEADERS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public allowExpandForSmallExpansion:Z

.field public final asStringList$delegate:Lkotlin/Lazy;

.field public canCollapseOnQQS:Z

.field public collapsed:Z

.field public dozing:Z

.field public lastEventSynthesized:Z

.field public listenForHeadsUp:Z

.field public qsTouchAboveFalsingThreshold:Z

.field public timeStamp:J

.field public touchSlopExceededBeforeDown:Z

.field public x:F

.field public y:F


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "Timestamp"

    const-string v1, "X"

    const-string v2, "Y"

    const-string v3, "QSTouchAboveFalsingThreshold"

    const-string v4, "Dozing"

    const-string v5, "Collapsed"

    const-string v6, "CanCollapseOnQQS"

    const-string v7, "ListenForHeadsUp"

    const-string v8, "AllowExpandForSmallExpansion"

    const-string v9, "TouchSlopExceededBeforeDown"

    const-string v10, "LastEventSynthesized"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->TABLE_HEADERS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->timeStamp:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->x:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->y:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->qsTouchAboveFalsingThreshold:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->dozing:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->collapsed:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->canCollapseOnQQS:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->listenForHeadsUp:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->allowExpandForSmallExpansion:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->touchSlopExceededBeforeDown:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->lastEventSynthesized:Z

    new-instance v0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$asStringList$2;-><init>(Lcom/android/systemui/statusbar/phone/NPVCDownEventState;)V

    invoke-static {v0}, Lkotlin/LazyKt__LazyJVMKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState;->asStringList$delegate:Lkotlin/Lazy;

    return-void
.end method
