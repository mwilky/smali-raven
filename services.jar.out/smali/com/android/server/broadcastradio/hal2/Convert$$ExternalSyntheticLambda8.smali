.class public final synthetic Lcom/android/server/broadcastradio/hal2/Convert$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/hardware/broadcastradio/V2_0/DabTableEntry;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->$r8$lambda$021e3bsGPoIo22XMl3-LMB4HbLM(Landroid/hardware/broadcastradio/V2_0/DabTableEntry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
