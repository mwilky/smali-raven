.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$registerAnnouncementListenerCallback;


# instance fields
.field public final synthetic f$0:Landroid/util/MutableInt;

.field public final synthetic f$1:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public synthetic constructor <init>(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;->f$0:Landroid/util/MutableInt;

    iput-object p2, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/broadcastradio/hal2/Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;->f$0:Landroid/util/MutableInt;

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->$r8$lambda$qvlTWy0_2a99-L5MlRpee0Fz9hk(Landroid/util/MutableInt;Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/ICloseHandle;)V

    return-void
.end method
