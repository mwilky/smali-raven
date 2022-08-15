.class public final synthetic Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/ITunerSession$isConfigFlagSetCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableInt;

.field public final synthetic f$1:Landroid/util/MutableBoolean;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Landroid/util/MutableBoolean;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$1:Landroid/util/MutableBoolean;

    return-void
.end method


# virtual methods
.method public final onValues(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$0:Landroid/util/MutableInt;

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/TunerSession$$ExternalSyntheticLambda0;->f$1:Landroid/util/MutableBoolean;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->$r8$lambda$VlPtxiDqEMP12OgDIJyT6uOT5bA(Landroid/util/MutableInt;Landroid/util/MutableBoolean;IZ)V

    return-void
.end method
