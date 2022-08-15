.class public final synthetic Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/hardware/broadcastradio/V2_0/IBroadcastRadio$getAmFmRegionConfigCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/broadcastradio/hal2/Mutable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/broadcastradio/hal2/Mutable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

    return-void
.end method


# virtual methods
.method public final onValues(ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/broadcastradio/hal2/Mutable;

    invoke-static {p0, p1, p2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->$r8$lambda$QGJ1KnE6jA17lltX4UvEaWTDlJE(Lcom/android/server/broadcastradio/hal2/Mutable;ILandroid/hardware/broadcastradio/V2_0/AmFmRegionConfig;)V

    return-void
.end method
