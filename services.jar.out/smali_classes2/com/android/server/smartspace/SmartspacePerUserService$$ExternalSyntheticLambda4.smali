.class public final synthetic Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/smartspace/SmartspaceSessionId;

.field public final synthetic f$1:Landroid/app/smartspace/SmartspaceTargetEvent;


# direct methods
.method public synthetic constructor <init>(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    iput-object p2, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/SmartspaceTargetEvent;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$0:Landroid/app/smartspace/SmartspaceSessionId;

    iget-object p0, p0, Lcom/android/server/smartspace/SmartspacePerUserService$$ExternalSyntheticLambda4;->f$1:Landroid/app/smartspace/SmartspaceTargetEvent;

    check-cast p1, Landroid/service/smartspace/ISmartspaceService;

    invoke-static {v0, p0, p1}, Lcom/android/server/smartspace/SmartspacePerUserService;->$r8$lambda$jMN7fDTI1oDX-sBaILir6WuMze4(Landroid/app/smartspace/SmartspaceSessionId;Landroid/app/smartspace/SmartspaceTargetEvent;Landroid/service/smartspace/ISmartspaceService;)V

    return-void
.end method
