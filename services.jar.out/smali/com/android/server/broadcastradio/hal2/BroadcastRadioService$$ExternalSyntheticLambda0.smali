.class public final synthetic Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$$ExternalSyntheticLambda0;
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

    check-cast p1, Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->$r8$lambda$7Y2GW55ON2cznoNIqb00IC7HUvE(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;

    move-result-object p0

    return-object p0
.end method
