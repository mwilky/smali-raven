.class public final Lcom/android/server/locksettings/LockSettingsService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "LockSettingsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/locksettings/LockSettingsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lifecycle"
.end annotation


# instance fields
.field private mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onBootPhase(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$000(Lcom/android/server/locksettings/LockSettingsService;)V

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-static {v0}, Lcom/android/server/locksettings/LockSettingsService;->access$100(Lcom/android/server/locksettings/LockSettingsService;)V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-static {}, Landroid/security/keystore2/AndroidKeyStoreProvider;->install()V

    new-instance v0, Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    const-string/jumbo v1, "lock_settings"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public onUserStarting(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->onStartUser(I)V

    return-void
.end method

.method public onUserStopped(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->onCleanupUser(I)V

    return-void
.end method

.method public onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;->mLockSettingsService:Lcom/android/server/locksettings/LockSettingsService;

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsService;->onUnlockUser(I)V

    return-void
.end method
