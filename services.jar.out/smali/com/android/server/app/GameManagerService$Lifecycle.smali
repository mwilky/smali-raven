.class public Lcom/android/server/app/GameManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "GameManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/app/GameManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Lifecycle"
.end annotation


# instance fields
.field private mService:Lcom/android/server/app/GameManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {v0}, Lcom/android/server/app/GameManagerService;->onBootCompleted()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/app/GameManagerService;

    invoke-virtual {p0}, Lcom/android/server/app/GameManagerService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/app/GameManagerService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    const-string v1, "game"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/app/GameManagerService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->access$800(Lcom/android/server/app/GameManagerService;)V

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-static {v0}, Lcom/android/server/app/GameManagerService;->access$900(Lcom/android/server/app/GameManagerService;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/app/GameManagerService;->onUserStarting(I)V

    return-void
.end method

.method public onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/app/GameManagerService;->onUserStopping(I)V

    return-void
.end method

.method public onUserSwitching(Lcom/android/server/SystemService$TargetUser;Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameManagerService$Lifecycle;->mService:Lcom/android/server/app/GameManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/app/GameManagerService;->onUserSwitching(Lcom/android/server/SystemService$TargetUser;I)V

    return-void
.end method
