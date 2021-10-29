.class Lcom/android/server/broadcastradio/hal2/RadioModule$1;
.super Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;
.source "RadioModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/broadcastradio/hal2/RadioModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;


# direct methods
.method constructor <init>(Lcom/android/server/broadcastradio/hal2/RadioModule;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-direct {p0}, Landroid/hardware/broadcastradio/V2_0/ITunerCallback$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$onAntennaStateChange$5(ZLandroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onAntennaState(Z)V

    return-void
.end method

.method static synthetic lambda$onParametersUpdated$7(Ljava/util/Map;Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p1, p0}, Landroid/hardware/radio/ITunerCallback;->onParametersUpdated(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic lambda$onTuneFailed$0(ILandroid/hardware/radio/ProgramSelector;Landroid/hardware/radio/ITunerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-interface {p2, p0, p1}, Landroid/hardware/radio/ITunerCallback;->onTuneFailed(ILandroid/hardware/radio/ProgramSelector;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onAntennaStateChange$6$RadioModule$1(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$202(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;

    invoke-direct {v1, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda3;-><init>(Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$2$RadioModule$1(Landroid/hardware/radio/ITunerCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v0}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$500(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/hardware/radio/ITunerCallback;->onCurrentProgramInfoChanged(Landroid/hardware/radio/RadioManager$ProgramInfo;)V

    return-void
.end method

.method public synthetic lambda$onCurrentProgramInfoChanged$3$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programInfoFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$502(Lcom/android/server/broadcastradio/hal2/RadioModule;Landroid/hardware/radio/RadioManager$ProgramInfo;)Landroid/hardware/radio/RadioManager$ProgramInfo;

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public synthetic lambda$onParametersUpdated$8$RadioModule$1(Ljava/util/ArrayList;)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->vendorInfoFromHal(Ljava/util/List;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda2;

    invoke-direct {v2, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda2;-><init>(Ljava/util/Map;)V

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public synthetic lambda$onProgramListUpdated$4$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 3

    nop

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programListChunkFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)Landroid/hardware/radio/ProgramList$Chunk;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$300(Lcom/android/server/broadcastradio/hal2/RadioModule;)Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/broadcastradio/hal2/ProgramInfoCache;->filterAndApplyChunk(Landroid/hardware/radio/ProgramList$Chunk;)Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    invoke-static {v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$400(Lcom/android/server/broadcastradio/hal2/RadioModule;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/TunerSession;

    invoke-virtual {v2, v0}, Lcom/android/server/broadcastradio/hal2/TunerSession;->onMergedProgramListUpdateFromHal(Landroid/hardware/radio/ProgramList$Chunk;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public synthetic lambda$onTuneFailed$1$RadioModule$1(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V
    .locals 3

    nop

    invoke-static {p1}, Lcom/android/server/broadcastradio/hal2/Convert;->programSelectorFromHal(Landroid/hardware/broadcastradio/V2_0/ProgramSelector;)Landroid/hardware/radio/ProgramSelector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v2, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2, v0}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda0;-><init>(ILandroid/hardware/radio/ProgramSelector;)V

    invoke-static {v1, v2}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$100(Lcom/android/server/broadcastradio/hal2/RadioModule;Lcom/android/server/broadcastradio/hal2/RadioModule$AidlCallbackRunnable;)V

    return-void
.end method

.method public onAntennaStateChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Z)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onCurrentProgramInfoChanged(Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramInfo;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onParametersUpdated(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/broadcastradio/V2_0/VendorKeyValue;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Ljava/util/ArrayList;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgramListUpdated(Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramListChunk;)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onTuneFailed(ILandroid/hardware/broadcastradio/V2_0/ProgramSelector;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule$1;->this$0:Lcom/android/server/broadcastradio/hal2/RadioModule;

    new-instance v1, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/broadcastradio/hal2/RadioModule$1$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/broadcastradio/hal2/RadioModule$1;Landroid/hardware/broadcastradio/V2_0/ProgramSelector;I)V

    invoke-static {v0, v1}, Lcom/android/server/broadcastradio/hal2/RadioModule;->access$000(Lcom/android/server/broadcastradio/hal2/RadioModule;Ljava/lang/Runnable;)V

    return-void
.end method
