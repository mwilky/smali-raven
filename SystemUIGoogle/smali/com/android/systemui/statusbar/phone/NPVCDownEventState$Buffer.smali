.class public final Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer;
.super Ljava/lang/Object;
.source "NPVCDownEventState.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NPVCDownEventState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Buffer"
.end annotation


# instance fields
.field public final buffer:Lcom/android/systemui/util/collection/RingBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/util/collection/RingBuffer<",
            "Lcom/android/systemui/statusbar/phone/NPVCDownEventState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/systemui/util/collection/RingBuffer;

    sget-object v1, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer$buffer$1;

    const/16 v2, 0x32

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/util/collection/RingBuffer;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NPVCDownEventState$Buffer;->buffer:Lcom/android/systemui/util/collection/RingBuffer;

    return-void
.end method
