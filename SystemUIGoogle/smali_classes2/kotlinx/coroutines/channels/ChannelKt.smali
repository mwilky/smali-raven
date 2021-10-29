.class public final Lkotlinx/coroutines/channels/ChannelKt;
.super Ljava/lang/Object;
.source "Channel.kt"


# direct methods
.method public static final Channel(I)Lkotlinx/coroutines/channels/Channel;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(I)",
            "Lkotlinx/coroutines/channels/Channel<",
            "TE;>;"
        }
    .end annotation

    const/4 v0, -0x2

    if-eq p0, v0, :cond_3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2

    if-eqz p0, :cond_1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    new-instance v0, Lkotlinx/coroutines/channels/ArrayChannel;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/LinkedListChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/LinkedListChannel;-><init>()V

    goto :goto_0

    :cond_1
    new-instance v0, Lkotlinx/coroutines/channels/RendezvousChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/RendezvousChannel;-><init>()V

    goto :goto_0

    :cond_2
    new-instance v0, Lkotlinx/coroutines/channels/ConflatedChannel;

    invoke-direct {v0}, Lkotlinx/coroutines/channels/ConflatedChannel;-><init>()V

    goto :goto_0

    :cond_3
    new-instance v0, Lkotlinx/coroutines/channels/ArrayChannel;

    sget-object p0, Lkotlinx/coroutines/channels/Channel;->Factory:Lkotlinx/coroutines/channels/Channel$Factory;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/Channel$Factory;->getCHANNEL_DEFAULT_CAPACITY$kotlinx_coroutines_core()I

    move-result p0

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/ArrayChannel;-><init>(I)V

    :goto_0
    return-object v0
.end method

.method public static synthetic Channel$default(IILjava/lang/Object;)Lkotlinx/coroutines/channels/Channel;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    :cond_0
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelKt;->Channel(I)Lkotlinx/coroutines/channels/Channel;

    move-result-object p0

    return-object p0
.end method
