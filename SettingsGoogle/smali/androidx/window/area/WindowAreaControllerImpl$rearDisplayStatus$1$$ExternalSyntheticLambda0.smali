.class public final synthetic Landroidx/window/area/WindowAreaControllerImpl$rearDisplayStatus$1$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroidx/window/area/WindowAreaControllerImpl;

.field public final synthetic f$1:Lkotlinx/coroutines/channels/Channel;


# direct methods
.method public synthetic constructor <init>(Landroidx/window/area/WindowAreaControllerImpl;Lkotlinx/coroutines/channels/Channel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/window/area/WindowAreaControllerImpl$rearDisplayStatus$1$$ExternalSyntheticLambda0;->f$0:Landroidx/window/area/WindowAreaControllerImpl;

    iput-object p2, p0, Landroidx/window/area/WindowAreaControllerImpl$rearDisplayStatus$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/Channel;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Landroidx/window/area/WindowAreaControllerImpl$rearDisplayStatus$1$$ExternalSyntheticLambda0;->f$0:Landroidx/window/area/WindowAreaControllerImpl;

    iget-object p0, p0, Landroidx/window/area/WindowAreaControllerImpl$rearDisplayStatus$1$$ExternalSyntheticLambda0;->f$1:Lkotlinx/coroutines/channels/Channel;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, p0, p1}, Landroidx/window/area/WindowAreaControllerImpl$rearDisplayStatus$1;->$r8$lambda$W5Q7gWhbiQvDbku-1xnKHjOG9TU(Landroidx/window/area/WindowAreaControllerImpl;Lkotlinx/coroutines/channels/Channel;Ljava/lang/Integer;)V

    return-void
.end method
