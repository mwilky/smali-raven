.class public Lkotlinx/coroutines/channels/RendezvousChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "RendezvousChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>()V

    return-void
.end method


# virtual methods
.method protected final isBufferAlwaysEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final isBufferAlwaysFull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final isBufferEmpty()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method protected final isBufferFull()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
